// 辅助函数

// 汉字平均分布
// https://typst-doc-cn.github.io/guide/FAQ/character-intersperse.html
#let distr(s) = {
  stack(
    dir: ltr,
    ..s.clusters().map(x => [#x]).intersperse(1fr),
  )
}

#let rect-key(s, tail: "", w: auto, stroke: none) = {
  rect(
    // fill: rgb("eeeeee"),
    height: 1.5em,
    width: w,
    inset: 5pt,
    stroke: stroke,
    stack(
      dir: ltr,
      distr(s),
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

