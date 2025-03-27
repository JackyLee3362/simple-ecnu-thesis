#import "mod.typ": *
#show: style
// 中文封面
// 设置函数

#let meta-key = rect-key.with(tail: "：", stroke: none, w: 5em)
#let meta-value = rect-value.with(stroke: (bottom: .5pt), w: 80%)
#let info-key = rect-key.with(tail: "：", stroke: none, w: 7em)
#let info-value = rect-value.with(stroke: (bottom: .5pt), w: 80%)

// 1. 学校信息
#{
  set align(left)
  block(
    width: 100%,
    stack(
      dir: ltr,
      毕业年份 + [届硕士专业学位研究生学位论文],
    ),
  )
}

// 2. 元信息
#block(
  width: 100%,
  grid(
    columns: (50pt, 1fr, 50pt, 1fr),
    // 设置行间距
    row-gutter: 1em,
    meta-key("分类号"), meta-value[],
    meta-key("学校代码"), meta-value(学校代码),
    meta-key("密级"), meta-value[],
    meta-key("学号"), meta-value(学号),
  ),
)

// 3. 校徽
#{
  show text: upper
  block(
    width: 100%,
    above: 40pt,
    below: 40pt,
    image("/public/ECNU-中文校徽.svg", width: 100%),
  )
}

// 4. 论文类型
#block(
  width: 100%,
  above: 40pt,
  below: 40pt,
  stack(
    // 方向 dir: top to bottom
    dir: ttb,
    spacing: 1em,
    学校-英文,
    "硕士学位论文",
    "MASTER'S DISSERTATION",
  ),
)

// 5. 论文标题
#{
  set text(size: 字号.一号)
  block(
    width: 100%,
    above: 40pt,
    below: 40pt,
    stack(
      dir: ltr,
      论文题目-分段,
    ),
  )
}

// 6. 作者信息
#block(
  width: 100%,
  above: 40pt,
  below: 40pt,
  grid(
    columns: (90pt, 120pt),
    align: (right, left),
    row-gutter: 1em,
    info-key("院系"), info-value(院系),
    info-key("专业学位类别"), info-value(专业),
    info-key("指导教师"), info-value(指导教师),
    info-key("学位申请人"), info-value(作者),
  ),
)

// 7. 日期
#block(
  above: 40pt,
  below: 40pt,
  日期,
)

#pagebreak()


