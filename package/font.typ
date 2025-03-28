#let 字号 = (
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  中四: 13pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  小七: 5pt,
)
// 英文字体
#let Times-New-Roman = "Times New Roman"
// 宋体
#let 方正宋体 = "FZShuSong-Z01S"
#let 华文宋体 = "STSong"
#let 华文宋体-2 = "Songti SC" // Mac 上的华文宋体
#let 中易宋体 = "SimSun" // Windows 上的宋体
// 仿宋
#let 方正仿宋 = "FZFangSong-Z02S"
#let 华文仿宋 = "STFangSong"
#let 华文仿宋-2 = "FangSong SC"
#let 仿宋 = "FangSong"
#let 仿宋-2 = "FangSong_GB2312"
// 中宋
#let 华文中宋 = "STZhongsong"
// 黑体
#let 方正黑体 = "FZHei-B01S"
#let 华文黑体 = "STHeiti"
#let 华文黑体-2 = "Heiti SC"
#let 中易黑体 = "SimHei"
#let 微软雅黑 = "Microsoft YaHei"
#let 阿里巴巴普惠体 = "Alibaba PuHuiTi 2.0"
// 楷体
#let 方正楷体 = "FZKai-Z03S"
#let 华文楷体 = "STKaiti"
#let 华文楷体-2 = "Kaiti SC"
#let 中易楷体 = "SimKai"
#let 楷体 = "Kaiti"
#let 楷体-2 = "Kaiti_GB2312"

// 定义 fallback 的字体
#let 字体 = (
  宋体: (Times-New-Roman, 方正宋体, 华文宋体, 华文宋体-2, 中易宋体),
  仿宋: (Times-New-Roman, 方正仿宋, 华文仿宋, 华文仿宋-2, 仿宋, 仿宋-2),
  中宋: (Times-New-Roman, 华文中宋, 中易宋体),
  黑体: (Times-New-Roman, 阿里巴巴普惠体, 微软雅黑, 方正黑体, 华文黑体, 华文黑体-2, 中易黑体),
  楷体: (Times-New-Roman, 方正楷体, 华文楷体, 华文楷体-2, 楷体, 楷体-2),
  封面: (Times-New-Roman, 华文宋体-2, 方正宋体, 中易宋体),
)
