#import "/package/lib.typ": *
#import "/package/style.typ": *

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

// 正文样式
#let style(doc) = {
  // 设置页眉样式
  show: header-footer-style
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
  // 设置子图样式
  show: figure-style
  doc
}
