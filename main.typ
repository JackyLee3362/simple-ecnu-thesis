#import "/style.typ": *


// 全局样式
#show: global-style

// 封面样式
#show: preface
#include "/pages/封面.typ"
// 页面样式
#show: page-style
#include "/pages/原创性声明.typ"
#include "/pages/答辩委员会.typ"
#show: abstract-style
#include "/pages/摘要.typ"
#include "/pages/目录页.typ"

// 正文部分
#show: chapter-style
#include "/chapter/1-第一章.typ"
#include "/chapter/2-第二章.typ"
#include "/chapter/3-第三章.typ"
#include "/chapter/4-第四章.typ"
#include "/chapter/5-第五章.typ"

// 后续页面
#include "/pages/参考文献.typ"
#include "/pages/科研情况.typ"
#include "/pages/致谢.typ"
