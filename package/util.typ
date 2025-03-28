// 辅助函数

#let switch-two-side(to-page) = {
  if to-page {
    pagebreak(weak: true, to: "odd")
  } else {
    pagebreak(weak: true)
  }
}

