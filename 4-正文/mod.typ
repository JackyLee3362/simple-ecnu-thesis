#import "/package/lib.typ": *
#import "/package/font.typ": *
#import "/package/style.typ": *
#import "/package/util.typ": *



// 正文样式
#let style(doc) = {
  // 设置靠左
  set align(left)
  doc
}
