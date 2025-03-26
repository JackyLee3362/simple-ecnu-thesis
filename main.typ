#import "/style.typ": *


// 全局样式
#show: global-style

// 封面样式
#{
  // 样式
  show: preface
  // 内容
  include "/pages/封面.typ"
}


#{
  // 样式
  show: page-style
  // 内容
  include "/pages/原创性声明.typ"
  include "/pages/答辩委员会.typ"
}
#{
  // 样式
  show: abstract-style
  // 内容
  include "/pages/摘要.typ"
  include "/pages/目录页.typ"
}

// 正文样式和内容
#{
  // 样式
  show: chapter-style
  // 内容
  include "/chapter/1-第一章.typ"
  include "/chapter/2-第二章.typ"
  include "/chapter/3-第三章.typ"
  include "/chapter/4-第四章.typ"
  include "/chapter/5-第五章.typ"

  include "/pages/参考文献.typ"
  include "/pages/科研情况.typ"
  include "/pages/致谢.typ"
}

