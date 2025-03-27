#import "/package/style.typ": subpar-grid
#import "/package/lib.typ": *
// 正文样式
#let style(doc) = {
  // 设置居中
  set align(left)
  // 设置标题编号且放入目录页中
  set heading(
    numbering: numbly(
      "第{1:一}章",
      "{1}.{2}",
      "{1}.{2}.{3}",
    ),
    outlined: true,
  )
  doc
}
