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

# 注意！

模板中的示例由原文件署名作者所有！

The examples in the template are owned by the original file attribution author!

# 致谢

GLUT-Latex模板作者：[胡光辉教授](https://wdxy.glut.edu.cn/info/1073/1142.htm)，[韩旭东](https://github.com/XudongHan1999)，[NtskwK](https://github.com/NtskwK)

其他Latex社区的开发者

# 使用到的第三方项目

[gbt7714-bibtex-style](https://github.com/zepinglee/gbt7714-bibtex-style)
