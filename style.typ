/*
 * 该文件定义样式，并在 main.typ 中申明使用
 */
#import "/lib.typ": *
#import "/设置.typ": *

// 全局样式
#let global-style(doc) = {
  // 地区和语言设置
  set text(region: "CN", lang: "zh")
  // 设置页边距
  set page(
    margin: (
      top: 85pt,
      bottom: 70pt,
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

// 页眉和页脚设置
#let header-footer-style(doc, footer-num: "1") = {
  counter(page).update(1)
  set page(
    header: context {
      if calc.odd(here().page()) {
        stack(
          dir: ltr,
          align(left, hydra(1, skip-starting: false)),
          align(right, 页眉标题),
        )
      } else {
        stack(
          dir: ltr,
          align(left, 页眉标题),
          align(right, hydra(1, skip-starting: false)),
        )
      }
      stack(
        dir: ttb,
        spacing: 2pt,
        line(stroke: .5pt, length: 100%),
        line(stroke: .5pt, length: 100%),
      )
    },
    footer: context {
      if calc.odd(counter(page).get().first()) { h(1fr) }
      counter(page).display(footer-num)
    },
  )
  doc
}

// 摘要样式
#let abstract-style(doc) = {
  set heading(outlined: true)
  doc
}

// 正文样式
#let chapter-style(doc) = {
  set align(left)
  // 标题编号
  // https://typst-doc-cn.github.io/guide/FAQ/heading-formats.html
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

// 页面样式
#let ref-style(doc) = {
  set align(left)
  set heading(outlined: true)
  doc
}
