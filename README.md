# TeX 学科教材编写模版（VS Code + LaTeX Workshop）

面向中文数学讲义的 XeLaTeX 项目模板：`ctexart` + Windows 中文字体，内置例题、练习、定义、注意、方法总结等提示框，支持外部插图与 TikZ 绘图。

## 快速开始

```powershell
git clone https://github.com/ILearn-better/tex-textbook-template-vscode-latexshop.git
cd tex-textbook-template-vscode-latexshop
latexmk -xelatex main.tex
```

或在 VS Code 中打开该文件夹，安装 **LaTeX Workshop** 扩展后按 `Ctrl+Alt+B` 编译（本项目已配置保存自动编译、右侧 PDF 预览与正反向搜索）。

**环境要求**：Windows + TeX Live + VS Code + LaTeX Workshop。其他系统需调整 `main.tex` 中的 `fontset=windows`。

## 目录

```text
.
├── main.tex            主文件：加载样式并安排章节顺序
├── preamble/           导言区：配色、宏包、版式、命令、提示框
├── chapters/           正文，一章一个文件
├── images/             插图
├── .latexmkrc          命令行 latexmk 的 XeLaTeX 配置
└── 结构说明.md          完整使用文档
```

仓库只存源文件，编译产物（`main.pdf` 及各类中间文件）不纳入版本控制，克隆后自行编译即可。

## 文档

完整说明（各文件职责、新建讲义、添加章节、插入图片、可用环境与命令、常见问题）见 **[结构说明.md](./结构说明.md)**。

## 主要特性

- **提示框环境**：`example`（例题）、`exercise`（练习）、`definition`（定义）、`note`（注意）、`method`（方法总结）、`solution`/`analysis`（自动“解：”“分析：”），按章自动编号
- **数学快捷命令**：`\R \N \Z \Q \C`、`\set`、`\setof`、`\abs`、`\intcc`、`\vect` 等
- **插图**：`\fig`（单图）、`\figpair`（并排双图），图号按节编号
- **选择题**：`choices` 环境自动排（A）（B）（C）（D）
- **中文排版细节**：宋体正文 / 黑体标题 / 楷体强调，带圈数字 ①②③ 归入中文字体
