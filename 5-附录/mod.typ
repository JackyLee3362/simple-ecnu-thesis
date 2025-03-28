#import "/package/lib.typ": bilingual-bibliography
// 页面样式
#let style(doc) = {
  // 设置页眉样式
  set align(left)
  set heading(numbering: none, outlined: true)
  set heading(outlined: true)
  doc
}
