#import "/package/util.typ": *
#import "/package/font.typ": *
#import "/用户设置.typ": *

// 封面样式
#let style(doc) = {
  // 设置元素居中
  set align(center)
  doc
}

#let meta-key = rect-key.with(tail: "：", stroke: none, w: 5em)
#let meta-value = rect-value.with(stroke: (bottom: .5pt), w: 80%)
#let info-key = rect-key.with(tail: "：", stroke: none, w: 7em)
#let info-value = rect-value.with(stroke: (bottom: .5pt), w: 80%)