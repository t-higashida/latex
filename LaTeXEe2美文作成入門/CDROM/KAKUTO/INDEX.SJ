INDEX.euc-japan
                                   INDEX

[01] dvipsk-w32.tar.gz
dvi ---> ps driver   dvipsk-5.66a + ascii-jpatch-p1.3 for Win 32 (x86)
です。 このディレクトリにある vf-a2bk.tar.gz も必要です。
MakeTeXPK をサポートしています． また付属プログラムとして MakeTeXTFM
も付加してあります ( kpathsea 3.0 and texmflib-7.2 version )．

[02] makeindex-w32.tar.gz
この makeindex は旧アスキー JTeX 付属のものを kpathsea 3.0 に対応
させたものです．

[03] mendexk-w32.tar.gz
ソニーの淺山さんとアスキー（株）による， mendexk-2.4a を VC++ 5.0
で Win 32 (x86) console application として make したものです. 
kpathsea 3.0 で make してあります．

[04] oldformat.tar.gz
たまに， LaTeX 2.09, pLaTeX 2.09 や古い pTeX が必要になることも
あろうかと思います．それで
latex209.fmt  ( LaTeX 2.09 用 )
platex209.fmt ( pLaTeX 2.09 用 )
ptexold.fmt   ( old plain pTeX 用 )
を入れておきます．

[05] oldinputs.tar.gz
oldformat.tar.gz と共に用いる input files です。LaTeX2e 環境でも
packages として使用可能で有用なものがあると思われます。$TEXMF を
カレントディレクトリとして展開してください。

[06] ptex-2.1.5-w32bin.tar.gz
pTeX-2.1.5 for Win 32 (x86) のバイナリです。必須です．

[07] ptex-2.1.5-nec-w95bin.tar.gz
NEC Windows 95 では，[06] のバイナリが KERNEL32.DLL の
ページ違反を起こします． NEC Windows 95 をお使いの場合には [06]
のかわりに [07] を入手して下さい．

[08] ptex-2.1.5-w32lib.tar.gz
pTeX-2.1.5 用のライブラリ ( class files etc. ) です。必須です．

[09] web2c-7.0-w32bin.tar.gz
TeX-3.14159 by web2c-7.0 のバイナリです．必須です．

[10] web2c-7.0-w32lib.tar.gz
TeX-3.14159 by web2c-7.0 用のライブラリです． EC フォントと AMS フォント
を含みます．必須です．

[11] latex.tar.gz
LaTeX2e <1997/06/01> patch level 0 のマクロとフォーマットファイルです．

[12] platex.tar.gz
pLaTeX2e <1997/07/02>+2 のマクロとフォーマットファイルです．

[13] vf-a2bk.tar.gz
dvipsk-w32.tar.gz と共に必要な、 virtual fonts と tfm fonts です。

[14] txtutil.tar.gz
テキストファイルの行末コードを望みの OS 用に変換するだけのものです。

[15] texloader.tar.gz
Windows 95 や、 Windows NT の FAT の場合にディスク領域を倹約できる
ものです。 Windows NT with NTFS で、 ln.exe がある場合には無用のものです。

[16] pdftex-w32.tar.gz
PDFTeX version 0.11 です． pdftex.fmt と pdflatex.fmt を含みます．
cm , latex, ams の Bakoma type 1 fonts を入れてありますので，
これだけで直接 TeX ソースから PDF を作成できます．

[17] tiff2png-w32.tar.gz
PDFTeX 用の補助ツールで，画像フォーマットを TIFF から PNG に変換する
ものです．

[18] targzip.lzh
tar.exe と gzip.exe です．
------------------------------------------
Akira Kakuto  < kakuto@fuk.kindai.ac.jp >
------------------------------------------
