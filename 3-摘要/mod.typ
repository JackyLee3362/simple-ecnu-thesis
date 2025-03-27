// 摘要样式
#let abstract-style(doc) = {
  // 设置标题放入目录页，但是不编号
  set heading(numbering: none, outlined: true)
  set page(numbering: "i")
  doc
}