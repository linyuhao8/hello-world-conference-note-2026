import { readFile, writeFile } from 'node:fs/promises';
const schedule = JSON.parse(await readFile('data/schedule.json', 'utf8'));
const details = new Map();
for (const e of schedule) { if (e.officialText) details.set(e.id, e); }
const mins = x => Number(x.slice(0,2))*60 + Number(x.slice(3));
const overlaps = (a,b) => a.date === b.date && mins(a.start) < mins(b.end) && mins(b.start) < mins(a.end);
const fit = (route, e) => !route.some(x => overlaps(x,e));
const score = e => Math.min(100, 40 + (/agent|harness|skill|MCP|security|架構|驗收|治理|workflow|production|architecture|CI\/CD|knowledge graph|semantic layer|memory|observab|AIOps|身份|認證|測試|品質|RAG|event.driven/i.test((e.title||'')+' '+(e.officialText||'')) ? 35 : 0) + (e.type === 'lab' ? 10 : 0) + ((e.officialText||'').length > 1500 ? 10 : 0));
const why = e => e.type === 'lab' ? '長時段 hands-on，適合帶走可重用的實作 artifact；需用同時段 session 的機會成本交換深度。' : '依 detail page 的工程深度與和 Agent、verification、architecture、security 方向的吻合度評估。';
const groups = Object.groupBy(schedule, e => e.date+'|'+e.start+'-'+e.end);
let rec = '# Recommendations\n\nOfficial descriptions are preserved in each detail file. Scores and recommendations are Assessment against the supplied background.\n\n';
for (const [key, es] of Object.entries(groups)) { rec += '## '+key.replace('|',' ')+'\n\n| Recommendation | Course | Type | Speaker | Detail Summary | Why It Matters To Me | Score | Conflict |\n|---|---|---|---|---|---|---:|---|\n'; const ranked=es.slice().sort((a,b)=>score(b)-score(a)); for (const e of ranked) rec += '| '+(e.id===ranked[0].id?'⭐ 該時段首選':score(e)>=65?'✅ 推薦':score(e)>=50?'△ 普通':'○ 不優先')+' | '+e.title.replace(/\|/g,'/')+' | '+e.type+' | '+(e.speakerIds||[]).join(', ')+' | '+(e.officialText||'').split('\n').slice(1,4).join(' ').slice(0,180).replace(/\|/g,'/')+' | '+why(e)+' | '+score(e)+' | '+(es.length>1?'same interval':'none')+' |\n'; rec += '\n### ⭐ Recommended\n\n'+ranked[0].title+'\n\n### Why\n\n'+why(ranked[0])+' 第二名是 '+(ranked[1]?.title||'無')+'；未選第二名的原因是分數較低或與首選重疊。\n\n'; }
await writeFile('docs/RECOMMENDATIONS.md', rec, 'utf8');
const routes = { A: e => score(e), B: e => score(e)+(e.type==='lab'?25:-5), C: e => score(e)+(/architecture|production|security|observab|AIOps|治理|分散|架構|認證/i.test((e.title||'')+' '+(e.officialText||''))?20:0) };
let out='# Final Schedule\n\nEach route selects at most one entry for any overlapping interval.\n\n';
for (const [name,fn] of Object.entries(routes)) { const chosen=[]; for (const e of schedule.slice().sort((a,b)=>fn(b)-fn(a))) if (fit(chosen,e)) chosen.push(e); chosen.sort((a,b)=>(a.date+a.start).localeCompare(b.date+b.start)); out += '## Route '+name+' — '+(name==='A'?'我的最佳技術成長路線':name==='B'?'Workshop 深度優先':'Architecture / Production 優先')+'\n\n| Date | Time | Type | Room | Course | Score |\n|---|---|---|---|---|---:|\n'+chosen.map(e=>'| '+e.date+' | '+e.start+'-'+e.end+' | '+e.type+' | '+e.room+' | '+e.title.replace(/\|/g,'/')+' | '+fn(e)+' |').join('\n')+'\n\n'; }
out += 'Workshop opportunity cost is documented per conflict group in RECOMMENDATIONS.md and ALL-SESSIONS.md.\n'; await writeFile('docs/FINAL-SCHEDULE.md',out,'utf8');
