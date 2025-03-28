#import "/package/lib.typ": *
#import "/package/font.typ": *
#import "/用户设置.typ": *

// 定义全局页面样式
#let global-page-style(doc) = {
  // 设置页边距
  set page(
    margin: (
      top: 72pt,
      bottom: 72pt,
      left: 90pt,
      right: 90pt,
    ),
  )
  doc
}

// 定义全局标题样式
#let global-heading-style(doc) = {
  // 字体设置
  show heading: set text(font: 字体.黑体)
  // 字号设置
  show heading: set text(size: 字号.小四, weight: "medium")
  show heading.where(level: 1): set text(size: 字号.三号)
  show heading.where(level: 2): set text(size: 字号.四号)
  // 设置段间距
  show heading: set block(spacing: 15pt)
  show heading.where(level: 1): set block(spacing: 30pt)
  // 设置一级标题居中
  show heading.where(level: 1): set align(center)
  doc
}

// 定义全局内容样式
#let global-content-style(doc) = {
  // 设置地区和语言
  set text(region: "CN", lang: "zh")
  // 设置字体和字号
  set text(font: 字体.宋体, size: 字号.小四)
  // 设置段落样式 - 首段缩进 + 段间距
  set par(justify: true, first-line-indent: (amount: 2em, all: true), spacing: 1em)
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

// 全局样式
#let global-style(doc) = {
  // 设置页面
  show: global-page-style
  // 设置标题
  show: global-heading-style
  // 设置内容
  show: global-content-style
  // 设置图形/子图样式
  show: figure-style
  doc
}

// --------------------- 部分页面会用到的样式 --------------------
// 标题样式定义
#let header-style(doc) = {
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

// 页眉和页脚设置
#let _header-content(left, right) = {
  set text(size: 字号.五号)
  stack(
    dir: ttb,
    left + h(1fr) + right,
    v(.5em),
    line(length: 100%, stroke: .5pt),
    v(.15em),
    line(length: 100%, stroke: .5pt),
  )
}
#let header-footer-style(doc, footer-num: "1") = {
  counter(page).update(1)
  set page(
    numbering: footer-num,
    header: context {
      if calc.odd(here().page()) {
        _header-content(hydra(1, skip-starting: false), 页眉标题)
      } else {
        _header-content(页眉标题, hydra(1, skip-starting: false))
      }
    },
    footer: context {
      set text(size: 字号.五号)
      if calc.odd(counter(page).get().first()) { h(1fr) }
      counter(page).display(footer-num)
    },
  )
  doc
}


