= 预备知识

== 表格

普通表格


#table(
  columns: 3,
  table.header([a], [b], [c]),
  [d], [e], [f],
  [g], [h], [i],
)

三线表

#table(
  columns: 3,
  stroke: none,
  table.hline(),
  table.header([a], [b], [c]),
  table.hline(stroke: 0.5pt),
  [d], [e], [f],
  [g], [h], [i],
  table.hline(),
)

合并单元格

#table(
  columns: 3,
  stroke: none,
  align: center,
  table.hline(),
  table.header([a], [b], [c]),
  table.hline(stroke: 0.5pt),
  table.cell(colspan: 2)[10], [f],
  [g], [h], [i],
  table.hline(),
)

== 图表

#image("/image/崩坏星穹铁道.png")

#pagebreak()
