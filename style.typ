/*
 * 该文件定义样式，并在 main.typ 中申明使用
 */
// 全局样式
#let global-style(doc) = {
  // 地区和语言设置
  set text(region: "CN", lang: "zh")
  // 设置页边距
  set page(
    margin: (
      top: 80pt,
      bottom: 80pt,
      left: 90pt,
      right: 90pt,
    ),
  )
  // 设置标题居中
  show heading.where(level: 1): set align(center)
  // 设置标题前后间距
  show heading.where(level: 1): set block(above: 2em, below: 2em)
  doc
}

// 封面样式
#let preface(doc) = {
  set align(center)
  doc
}

// 定制页面样式
#let page-style(doc) = {
  set heading(outlined: false)
  doc
}

// 摘要样式
#let abstract-style(doc) = {
  set heading(outlined: true)
  doc
}

// 正文样式
#let chapter-style(doc) = {
  set heading(outlined: true)
  set align(left)
  doc
}
