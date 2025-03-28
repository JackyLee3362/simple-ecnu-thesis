#import "/package/lib.typ": *
#import "/package/font.typ": *
#import "/package/style.typ": subpar-grid



// 正文样式
#let style(doc) = {
  // 设置靠左
  set align(left)
  doc
}
