#import "/package/lib.typ": bilingual-bibliography
#import "/package/style.typ": header-footer-style
// 页面样式
#let style(doc) = {
  // 设置页眉样式
  show: header-footer-style

  set align(left)
  set heading(outlined: true)
  doc
}
