= 预备知识

== 图形示例

=== 图形中放表格

#figure(
  caption: [普通表格],
  kind: table, // 可以注释
  table(
    columns: 3,
    table.header([a], [b], [c]),
    [d], [e], [f],
    [g], [h], [i],
  ),
) <table-normal>

引用普通表格@table-normal，
或者这样写#ref(<table-normal>)

#figure(
  caption: [三线表],
  // kind: table, // 可以注释
  table(
    columns: 3,
    stroke: none,
    align: center,
    table.hline(),
    table.header([a], [b], [c]),
    table.hline(stroke: 0.5pt),
    [d], [e], [f],
    [g], [h], [i],
    table.hline(),
  ),
) <table-demo>

引用三线表 @table-demo

=== 图形：三线表 + 合并单元格

#figure(
  caption: [合并单元格],
  table(
    columns: 3,
    stroke: none,
    align: center,
    table.hline(),
    table.header(table.cell(colspan: 2)[a], [c]),
    table.hline(stroke: 0.5pt),
    table.cell(colspan: 2)[10], [f],
    [g], [h], [i],
    table.hline(),
  ),
)


== 图形中放入图片

星穹铁道，启动！

#figure(
  caption: [崩坏星穹铁道],
  kind: image,
  image("/image/崩坏星穹铁道.png", width: 80%),
)

关于子图




== 伪算法样式

== 代码样式

```python
print("hello")

```

== 数学公式

行内数学公式 $pi = 3.14$

行间数学公式

$
  sin^2 x + cos^2 x = 1
$

行间换行公式

$
  y &= 5 x + 1 & "其中" x& > 0\
  y &= 6 x + 2 & forall x& != 1\
  y &= 2
$

#pagebreak()
