# 桂林理工大学 Latex 模板

Latex Templates of Guilin university of technology

# 编译

- 使用xelatex

  ```bash
  xelatex GLUTthesis
  
  biber GLUTthesis
  
  xelatex GLUTthesis
  ```

- 使用latexmk

  ```makefile
  # 需要使用 tlmgr install latexmk 安装 latexmk
  latexmk -pdf -xelatex .\GLUTthesis.tex
  ```

- 使用makefile

  ```bash
  make thesis
  ```
# tips

- 有关字数的要求请参见[工作规范](../3-1-2-桂林理工大学本科毕业实习和毕业设计（论文）工作规范.doc)
- 有关内容以及格式的要求参见[撰写规范](../3-2-1-桂林理工大本科毕业设计(论文)撰写规范.doc)
- [其他可能用得上的材料](../毕业实习与毕业设计相关材料-20250603.zip)

## 常见问题

这些是Ntkskwk今年答辩时整理出来的常见问题。

- 中文摘要字数不要少于**400**字或过**1000**字，连带关键词**不要跨页**。
- 正文章节数最好是**四到五章**，不要太多或太少。
- 图片中的数字和英文也要用**新罗马体**，各种专题图和示意图最好和导师**反复确认**是否符合制图规范。
- 参考文献**不要**标注url和doi（如果你收到了类似的修改意见，请手动在bib文件中删除相关条目的属性）
- 用到的公式要介绍每个参数的意义，条件表达式最好用英语。
- 插入的图和表一定要在正文中引用，使用了别人论文中的图片时要标注来源。
- 专有名词第一次出现时需使用`中文名称（英语全称，英语缩写）`表示，如再次提及，则仅使用`英语缩写`即可。（e.g. 卷积神经网络（Convolutional Neural Network, CNN）是一种特殊的神经网络结构。CNN最早由 Yann LeCun 提出。）

# 版权声明

模板中的示例由原文件署名作者所有！

The examples in the template are owned by the original file attribution author!

# 致谢

GLUT-Latex模板作者：[胡光辉教授](https://wdxy.glut.edu.cn/info/1073/1142.htm)，[韩旭东](https://github.com/XudongHan1999)，[NtskwK](https://github.com/NtskwK)

其他Latex社区的开发者

# 使用到的第三方项目

[gbt7714-bibtex-style](https://github.com/zepinglee/gbt7714-bibtex-style)
