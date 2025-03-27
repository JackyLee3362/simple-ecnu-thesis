#import "/用户设置.typ": *

// 说明页面的样式
#let style(doc) = {
  // 设置标题不编号且不放入目录
  set heading(numbering: none, outlined: false)
  doc
}
