# XJTU-MyReport
自用的报告模板
---
### 使用事项
* 通过`\documentclass[]{MyReport}`使用
* 请详细阅读`报告模板使用说明.pdf`使用
* 部分编译器或编译环境可能不支持`.tex`文件包含中文字符，如果编译不通过，请去掉`.tex`中的中文字符
### 可选参数
  * 语言：默认为中文，如果英文需要指定[English]
  * 摘要类型，默认无摘要
    * `[abstractType=zh]`: 只有中文摘要，通过`\zhAbstractText{}`设置中文摘要内容，通过`\zhAbstractKey{}`设置中文摘要关键词
    * `[abstractType=en]`: 只有英文摘要，通过`\enAbstractText{}`设置英文摘要内容，通过`\enAbstractKey{}`设置英文摘要关键词
    * `[abstractType=zhen]`: 中英文摘要
  * section 排版类型，默认为连续排版
      * `[sectionType=next]`: section另起一页
      * `[sectionType=odd]`: section另起一奇数页
  * 抄录环境，默认为minted
    * `[listType=minted]`: minted 宏包
    * `[listType=listings]`: listings 宏包
  * 参考文献，默认不排版
    * `[Reference={ref.bib}]`: 参考文献文件为ref.bib
* 请注意`XJTUlogo.png`路径是否正确
---

声明与致谢：

本模板制作过程中参考了@obster-y的XJTU-thesis项目，https://github.com/obster-y/XJTU-thesis
