#import "/package/font.typ": *
#let key-name(key) = {
  text(font: 字体.黑体, size: 字号.四号, key)
}

#let outline-font-style(doc) = {
  show outline.entry.where(level: 1): it => {
    set text(font: 字体.黑体, size: 字号.四号)
    it
  }
  show outline.entry.where(level: 2): it => {
    set text(font: 字体.黑体, size: 字号.小四)
    it
  }
  show outline.entry.where(level: 3): it => {
    set text(font: 字体.宋体, size: 字号.小四)
    it
  }
  set outline(indent: 2em)

  doc
}

#let outline-style(doc) = {
  show outline.entry: it => {
    set block(spacing: 12pt)
    it
  }
  doc
}

// 摘要样式
#let style(doc) = {
  // 页眉设置
  // 设置标题放入目录页，但是不编号
  set heading(numbering: none, outlined: true)
  set page(numbering: "i")
  show: outline-style
  doc
}
