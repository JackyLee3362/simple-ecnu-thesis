// 辅助函数

// 汉字平均分布
// https://typst-doc-cn.github.io/guide/FAQ/character-intersperse.html
#let distr(s, tail: "", w: auto) = {
  block(
    width: w,
    stack(
      dir: ltr,
      stack(
        dir: ltr,
        ..s.clusters().map(x => [#x]).intersperse(1fr),
      ),
      tail,
    ),
  )
}

// 下划线
#let underline-text(s, w: auto) = {
  rect(stroke: (bottom: 1pt), width: w)[#s]
}

#let info-inset = (x: 0pt, bottom: 2pt)
#let info-key(
  body,
  info-inset: info-inset,
  is-meta: false,
  is-title: false,
  with-tail: true,
  justify: true,
  size: none,
  weight: none,
) = {
  rect(
    width: 100%,
    inset: info-inset,
    stroke: none,
    if justify { justify-text(with-tail: with-tail or is-meta, body) } else {
      body + if with-tail { "：" } else { "" } + h(1fr)
    },
  )
}

#let info-value(
  key,
  body,
  info-inset: info-inset,
  is-meta: false,
  is-title: false,
  no-stroke: false,
  size: none,
  weight: none,
) = {
  set align(center)
  rect(
    width: 100%,
    inset: info-inset,
    stroke: if no-stroke { none } else { (bottom: if is-title { stroke-width * 2 } else { stroke-width } + black) },
    text(
      font: if is-title { fonts.仿宋 } else if is-meta { fonts.宋体 } else { fonts.仿宋 },
      size: if size != none { size } else if is-title { 字号.一号 } else if is-meta { 字号.小四 } else { 字号.四号 },
      weight: if weight != none { weight } else if is-title { "bold" } else { "regular" },
      bottom-edge: "descender",
      if (anonymous and (key in anonymous-info-keys)) {
        if is-meta { "█████" } else { "██████████" }
      } else {
        body
      },
    ),
  )
}
