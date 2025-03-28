#import "/package/style.typ": *
#import "/package/lib.typ": *
#show: show-cn-fakebold

// 全局样式
#show: global-style

#show: header-footer-style.with(footer-num: "i")
// 封面
#include "1-封面/中文封面.typ"
#include "1-封面/英文封面.typ"

// 说明页面
#include "2-说明/原创性声明.typ"
#include "2-说明/答辩委员会.typ"

// 页眉 页脚罗马字母 设置

// 摘要和目录
#include "3-摘要/中文摘要.typ"
#include "3-摘要/英文摘要.typ"
#include "3-摘要/目录页.typ"


// 正文标题标号设置
#show: header-style
// 页眉页脚设置
#show: header-footer-style
// 正文部分
#include "/4-正文/1-第一章.typ"
#include "/4-正文/2-第二章.typ"
#include "/4-正文/3-第三章.typ"
#include "/4-正文/4-第四章.typ"
#include "/4-正文/5-第五章.typ"

// 附录部分
#include "/5-附录/参考文献.typ"
#include "/5-附录/科研情况.typ"
#include "/5-附录/致谢.typ"

