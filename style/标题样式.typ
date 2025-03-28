#import "/package/util.typ": switch-two-side

// 定义全局标题样式
// -> content
#let heading-style(
  doc,
  sans-serif: "",
  h-size: 0pt,
  h1-size: 0pt,
  h2-size: 0pt,
  two-side: false,
) = {
  // ---------------- 字体/字号/字重设置 -----------------
  // 标题字体 + 字重设置
  show heading: set text(font: sans-serif, size: h-size, weight: "bold")
  // 设置一级标题字号
  show heading.where(level: 1): set text(size: h1-size)
  // 设置二级标题字号
  show heading.where(level: 2): set text(size: h2-size)
  // ----------------- 对齐设置 ------------------
  // 设置一级标题居中
  show heading.where(level: 1): set align(center)
  // ----------------- 间距设置 ------------------
  // 设置标题间距
  show heading: set block(spacing: 2em)
  show heading: set block(spacing: 1.5em)
  // 设置一级标题间距和自动换页
  show heading.where(level: 1): it => {
    // 这里不使用 above 是因为靠近页边距，不生效
    switch-two-side(two-side)
    v(1em)
    it
    v(.5em)
  }
  doc
}
