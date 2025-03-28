#import "/package/style.typ": header-footer-style

// 摘要样式
#let style(doc) = {
  // 页眉设置
  show: header-footer-style.with(footer-num: "i")
  // 设置标题放入目录页，但是不编号
  set heading(numbering: none, outlined: true)
  set page(numbering: "i")
  doc
}
