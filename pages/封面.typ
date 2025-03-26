#import "/设置.typ": *
#import "/util.typ": *
// = 封面

// 1. 元信息
#{
  set align(left)
  // 定义局部函数 meta-key
  // 等同于 meta-key(s) = distr(s, tail: "：", w: 4em)
  block(
    width: 100%,
    stack(
      dir: ltr,
      毕业年份 + [届硕士专业学位研究生学位论文],
    ),
  )
}
#{
  let meta-key = distr.with(tail: "：", w: 4em)
  block(
    width: 100%,
    grid(
      columns: (50pt, 1fr, 50pt, 1fr),
      // 设置行间距
      row-gutter: 1em,
      meta-key("分类号"), [],
      meta-key("学校代码"), 学校代码,
      meta-key("密级"), [],
      meta-key("学号"), 学号,
    ),
  )
}
// 2. 校徽与标题
#{
  // 该部分英文全部大写
  show text: upper
  image("/public/ECNU-中文校徽.svg", width: 100%)
  block(
    width: 100%,
    stack(
      // 方向 dir: top to bottom
      // 是从上往下
      dir: ttb,
      spacing: 1em,
      学校-英文,
      "硕士学位论文",
      "MASTER'S DISSERTATION",
    ),
  )
  [论文题目：]
  论文题目
}
// 3. 作者信息
#{
  let meta-key = distr.with(tail: "：", w: 6em)
  block(
    width: 100%,
    grid(
      columns: (90pt, 120pt),
      align: (right, left),
      row-gutter: 1em,
      meta-key("院系"), 院系,
      meta-key("专业学位类别"), 专业,
      meta-key("指导教师"), 指导教师,
      meta-key("学位申请人"), 作者,
    ),
  )
  日期
}


#pagebreak()

// = 英文封面

Dissertation for Master's Degree (Professional) in #毕业年份

University Code #学校代码

Student ID: #学号

#image("/public/ECNU-英文校徽.svg")

Title: #论文题目-英文

Department: #院系-英文

Supervisor: #指导教师-英文

Field: #专业-英文

Candidate: #作者-英文

#pagebreak()
