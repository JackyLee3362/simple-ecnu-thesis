#import "/package/font.typ": *
#let key-name(key) = {
  text(font: 字体.黑体, size: 字号.四号, key)
}
// 摘要样式
#let style(doc) = {
  // 页眉设置
  // 设置标题放入目录页，但是不编号
  set heading(numbering: none, outlined: true)
  set page(numbering: "i")
  doc
}
