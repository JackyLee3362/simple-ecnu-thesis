#import "/package/font.typ": *
#import "/用户设置.typ": *

// 封面样式
#let style(doc) = {
  // 设置元素居中
  set align(center)
  doc
}

// 汉字平均分布
// https://typst-doc-cn.github.io/guide/FAQ/character-intersperse.html
#let distr(s) = {
  stack(
    dir: ltr,
    ..s.clusters().map(x => [#x]).intersperse(1fr),
  )
}

#let rect-key(s, tail: "", w: auto, stroke: none, use-distr: true) = {
  let body = s
  if use-distr {
    body = distr(s)
  }
  rect(
    // fill: rgb("eeeeee"),
    height: 1.5em,
    inset: 5pt,
    width: w,
    stroke: stroke,
    stack(
      dir: ltr,
      body,
      tail,
    ),
  )
}
#let rect-value(s, w: auto, stroke: none) = {
  rect(
    // fill: rgb("eeeeee"),
    height: 1.5em,
    inset: 5pt,
    width: w,
    stroke: stroke,
    align(center, s),
  )
}

#let meta-key = rect-key.with(tail: "：", stroke: none, w: 5em)
#let meta-value = rect-value.with(stroke: (bottom: .5pt), w: 80%)
#let info-key = rect-key.with(tail: "：", stroke: none, w: 7em)
#let info-value = meta-value

#let en-meta-key = rect-key.with(tail: ":", stroke: none, w: 10em, use-distr: false)
#let en-meta-value = rect-key.with(stroke: none, w: 80%, use-distr: false)
#let en-info-key = en-meta-key
#let en-info-value = en-meta-value.with(stroke: (bottom: .5pt))

#let title-value = rect-value.with((stroke: (bottom: .5pt), w: 80%), use-distr: false)
