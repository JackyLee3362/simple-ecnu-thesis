/*
 * 该文件定义样式，并在 main.typ 中申明使用
 */
#import "/lib.typ": *
#import "/设置.typ": *

// -------------------- 页面样式 --------------------
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
  show heading.where(level: 1): set block(spacing: 30pt)
  doc
}

// 封面样式
#let preface(doc) = {
  // 设置居中
  set align(center)
  doc
}

// 定制页面样式
#let page-style(doc) = {
  // 设置标题不编号且不放入目录
  set heading(numbering: none, outlined: false)
  doc
}


// 摘要样式
#let abstract-style(doc) = {
  // 设置标题放入目录页，但是不编号
  set heading(numbering: none, outlined: true)
  set page(numbering: "i")
  doc
}

// 正文样式
#let chapter-style(doc) = {
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

// 页面样式
#let ref-style(doc) = {
  set align(left)
  set heading(outlined: true)
  doc
}

// -------------------- 其他样式 --------------------
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
// 子图样式设置
#let sub-figure-numbering = (super, sub) => numbering("1.1a", counter(heading).get().first(), super, sub)
#let figure-numbering = super => numbering("1.1", counter(heading).get().first(), super)
#let equation-numbering = super => numbering("(1.1)", counter(heading).get().first(), super)
#let figure-style(doc) = {
  show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: raw)).update(0)
    it
  }
  // 子图标题样式
  show figure.caption: it => {
    let pattern = "^[^:]+" + sym.space.nobreak + "[\d.]+"
    show regex(pattern): strong
    show regex(pattern): emph
    it
  }
  show figure: set figure(numbering: figure-numbering)
  show math.equation: set math.equation(numbering: equation-numbering)
  doc
}
#let subpar-grid = subpar.grid.with(
  numbering: figure-numbering,
  numbering-sub-ref: sub-figure-numbering,
)