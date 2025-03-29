#set page("a8")
#import "../template/main.typ": *

// #show: header-style
// #show: header-footer-style
#let two-side = true

#let switch-two-side(to-page) = {
  if to-page {
    pagebreak(weak: true, to: "odd")
  } else {
    pagebreak(weak: true)
  }
}

#let auto-pagebreak(it) = {
  switch-two-side(two-side)
  it
}

#show heading.where(level: 1): auto-pagebreak

中文封面内容

#lorem(20)

#switch-two-side(two-side)


英文封面内容

#lorem(20)

#switch-two-side(two-side)


#set page(numbering: "I")
#counter(page).update(1)

声明

#lorem(50)

#switch-two-side(two-side)


答辩委员会

#lorem(50)

#switch-two-side(two-side)



#set page(numbering: "1")
#counter(page).update(1)

= 第一章

#lorem(100)



= 第二章

#lorem(100)


= 第三章

#lorem(100)


