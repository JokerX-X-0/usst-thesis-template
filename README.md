# 上海理工大学硕士/博士学位论文 LaTeX 模板

这是一个面向上海理工大学硕士/博士学位论文的 XeLaTeX 模板。模板根据当前工程中的学校规范、封面、内封面、授权书和声明文件整理，已经包含封面、声明、中英文摘要、目录、正文、图表公式、参考文献、附录、在读期间成果和致谢等常见组成部分。

软件安装、VSCode 配置、编译验证和写作修改步骤见 [使用说明.md](使用说明.md)。

## 目录结构

```text
.
├── main.tex                 # 论文入口文件，修改个人信息、组织章节顺序
├── ussthesis.cls            # 模板样式文件，通常不需要改
├── references.bib           # BibTeX 参考文献数据库
├── README.md                # 项目概览
├── 使用说明.md              # 面向使用者的详细教程
├── chapters/
│   ├── abstract.tex         # 中文摘要、英文摘要和关键词
│   ├── chapter01.tex        # 第一章示例
│   ├── chapter02.tex        # 图、表、公式示例
│   ├── conclusion.tex       # 结论示例
│   ├── appendix.tex         # 附录示例
│   ├── publications.tex     # 在读期间成果
│   └── acknowledgements.tex # 致谢
├── figures/
│   └── fig1.png             # 示例图，正文实际引用此文件
└── .vscode/settings.json    # VSCode LaTeX Workshop 编译配置
```

## 快速开始

1. 按 [使用说明.md](使用说明.md) 中“安装软件和配置环境”章节安装 TeX Live、VSCode 和 LaTeX Workshop。
2. 用 VSCode 打开本文件夹，确认 `xelatex`、`bibtex` 和 `latexmk` 可用。
3. 修改 [main.tex](main.tex) 顶部的论文题名、作者、学号、学院、专业、导师和日期。
4. 修改 [chapters/abstract.tex](chapters/abstract.tex) 中的中英文摘要和关键词。
5. 在 `chapters/` 中编辑或新增章节文件，并在 [main.tex](main.tex) 中用 `\include{...}` 引入。
6. 将图片放入 `figures/`，参考 [chapters/chapter02.tex](chapters/chapter02.tex) 中的图表示例插入正文。
7. 将参考文献写入 [references.bib](references.bib)，正文中用 `\cite{文献键}` 引用。
8. 编译 `main.tex`，生成 `main.pdf`。

## 编译方式

VSCode 中推荐使用 LaTeX Workshop 已配置的 recipe：

```text
XeLaTeX -> BibTeX -> XeLaTeX*2
```

命令行推荐使用 `latexmk`：

```powershell
$env:WINDIR='C:\Windows'
$env:SystemRoot='C:\Windows'
latexmk -xelatex -interaction=nonstopmode -file-line-error main.tex
```

也可以手动执行完整编译链：

```powershell
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
bibtex main
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
xelatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
```

如果 Windows 命令行出现 TeX Live `runscript.tlu` 相关环境变量错误，先按上面的命令设置 `WINDIR` 和 `SystemRoot`。

## 常用修改位置

| 修改内容 | 文件 |
| --- | --- |
| 题名、作者、学号、学院、专业、导师、日期 | [main.tex](main.tex) |
| 中英文摘要、关键词 | [chapters/abstract.tex](chapters/abstract.tex) |
| 正文章节 | `chapters/chapter*.tex` 或自行新增的章节文件 |
| 图片文件 | `figures/` |
| 参考文献条目 | [references.bib](references.bib) |
| 附录 | [chapters/appendix.tex](chapters/appendix.tex) |
| 在读期间成果 | [chapters/publications.tex](chapters/publications.tex) |
| 致谢 | [chapters/acknowledgements.tex](chapters/acknowledgements.tex) |

## 注意事项

- 普通使用者优先修改 `main.tex`、`chapters/`、`figures/` 和 `references.bib`，不要直接改 `ussthesis.cls`。
- 中文正文使用宋体，英文和数字使用 Times New Roman；Windows 系统通常已经包含所需字体。
- 目录页会在第一章之前直接打印“中文摘要”和“ABSTRACT”，这两项不带页码；如不需要，可在 `main.tex` 中启用 `\usstAbstractNotInToc`。
- 正文前空白背面页默认不插入；打印版可在 `main.tex` 中启用 `\usstFrontMatterBlankPages`，第一章首页始终会保持在奇数页。
- 第二章及后续各章默认保持奇数页开章；如需取消章间补空白页，可在 `main.tex` 中启用 `\usstChapterAnyPage`。
- 图片建议使用 `.png`、`.jpg` 或 `.pdf`。如果原始图片是 `.tif`，建议先转换成 `.png` 或 `.pdf` 后再插入正文。
- 图表默认按源码位置放置，示例使用 `[H]` 以遵循图文相随原则；表格示例使用 `tabularx` 撑满正文宽度。
- 参考文献采用 `gbt7714-numeric` 样式，新增或删除参考文献后需要经过 BibTeX 编译。
