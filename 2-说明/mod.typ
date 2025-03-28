#import "/用户设置.typ": *
#import "/package/style.typ": *
#import "/package/font.typ": *

// 说明页面的样式
#let style(doc) = {
  // 设置标题不编号且不放入目录
  set heading(numbering: none, outlined: false)
  doc
}

#let sudo-heading(title) = {
  set align(center)
  text(font: 字体.黑体, size: 字号.三号, title, weight: "semibold")
}
