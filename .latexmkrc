# latexmk 默认配置：用 XeLaTeX 编译 main.tex
$pdf_mode  = 5;
$xelatex   = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$max_repeat = 5;
@default_files = ('main.tex');
