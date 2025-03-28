#import "mod.typ": *
#show: style

= _#(作者)_ 硕士学位论文答辩委员会成员名单
#show table: set align(center)
#table(
  columns: (1fr, 1fr, 4fr, 1fr),
  align: center + horizon,
  stroke: 0.5pt + black,
  rows: 2.5em,
  [姓名], [职称], [单位], [备注],
  [], [], [], [主席],
  [], [], [], [],
  [], [], [], [],
  [], [], [], [],
)

#pagebreak()
