#import "/package/lib.typ": *
#import "/用户设置.typ": *

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

// -------------------- 其他样式 --------------------
// 页眉和页脚设置
#let header-footer-style(doc, footer-num: "1") = {
  counter(page).update(1)
  set page(
    numbering: footer-num,
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

