if (-d '/Library/TeX/texbin') {
    $ENV{'PATH'} = '/Library/TeX/texbin:' . ($ENV{'PATH'} // '');
}

# 使用 XeLaTeX，并将 PDF 与辅助文件放在 build 目录。
$pdf_mode = 5;
$out_dir = 'build';
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
