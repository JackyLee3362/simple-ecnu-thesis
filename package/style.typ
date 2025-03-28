#import "/package/lib.typ": *
#import "/package/font.typ": *
#import "/package/util.typ": *
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
  show heading: set text(font: 字体.黑体, weight: "bold")
  // 设置一级标题间距和自动换页
  show heading.where(level: 1): it => {
    // 这里不使用 above 是因为靠近页边距，不生效
    switch-two-side(双页模式)
    v(1em)
    it
    v(.5em)
  }
  // 字号设置
  show heading: set text(size: 字号.小四)
  show heading.where(level: 1): set text(size: 字号.三号)
  show heading.where(level: 2): set text(size: 字号.四号)
  // 设置标题间距
  show heading: set block(spacing: 2em)
  show heading: set block(spacing: 1.5em)
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
  set par(justify: true, first-line-indent: (amount: 2em, all: true), spacing: 1em, leading: 1em)
  // 设置粗体样式
  show strong: set text(font: 字体.黑体, weight: "regular")
  show emph: set text(font: 字体.楷体)
  show raw: set text(font: 字体.等宽)
  show raw.where(block: true): set par(leading: 1em)
  // 设置 figure 表格表头
  show figure.where(kind: table): set figure.caption(position: top)
  // 设置 figure 标题样式
  show figure.caption: c => {
    block(inset: (top: 0.4em, bottom: 0.4em))[
      #text(font: 字体.楷体)[#c.supplement #context c.counter.display(c.numbering) #h(.3em) #c.body]
    ]
  }
  // 设置列表样式
  set enum(indent: 2em, numbering: it => text(baseline: .2em, numbering("1.", it)))
  set list(indent: 2em, marker: it => text(baseline: .2em)[•])
  // 处理一级标题的引用格式

  doc
}

// 子图样式设置
#let sub-figure-numbering = (super, sub) => numbering("1.1a", counter(heading).get().first(), super, sub)
#let figure-numbering = super => numbering("1.1", counter(heading).get().first(), super)
#let equation-numbering = super => numbering("(1.1)", counter(heading).get().first(), super)
#let subpar-grid = subpar.grid.with(
  numbering: figure-numbering,
  numbering-sub-ref: sub-figure-numbering,
)
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


//  ==================== 部分页面会用到的样式 ====================
#import "/style/图形样式.typ": *
#import "/style/页眉页脚样式.typ": *

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
  // 设置中文字符换行修复
  show: cjk-fix
  // 设置换页
  doc
}



