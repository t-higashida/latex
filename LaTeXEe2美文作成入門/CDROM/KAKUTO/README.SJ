README.1st.euc-japan
                         pTeX 2.1.5 for Win32 (x86)
                                 ( Beta-12 )


         (注) アスキー(株)による日本語化の部分はベータ版 (β12)
              です．もしおかしな振る舞いをする場合，アスキー(株)
              によるオリジナルのものとは無関係で，Win32 への
              移植によるものかもしれませんので，アスキー(株)に
              直接問いあわせることは避けてください．この文書の
              最後のアドレスに e-mail でご連絡をお願いいたします．

--------------------------------------------------------------------------

[1] 始めに

株式会社アスキーで開発された、TeX 3.14159 ( web-7.0, web2c-7.0 ) 
ベースの pTeX 2.1.5 を Win32 (x86) console applications として
Microsoft VC++ 5.0 で make したバイナリをお届けいたします。
漢字コードはシフトJISとしております。作業はすべて Windows NT 4.0
上で行いました。tools は ftp://ftp.cs.yale.edu/WWW/pub/gnat/src/
から入手した sh.exe, make.exe ( 注．この二つは現在同サイトに存在しません),
ftp://microlib.cc.utexas.edu/pub/nt/gnu の gnubin.tar.Z および
GNU の flex と m4 を別に compile したものと autoconf を使用しました。

(A) web2c-7.0-w32bin.tar.gz :
       Web2c-7.0 と web-7.0 ( TeX-3.14159 ) によるバイナリです．
       必ず入手する必要があります．

(B) web2c-7.0-w32lib.tar.gz :
       TeX 環境で必要なライブラリです． EC および AMS フォントを
       含みます．必ず入手して下さい．

(C) ptex-2.1.5-w32bin.tar.gz :
       株式会社アスキーによる，web2c-7.0, web-7.0 上の日本語化された
       バイナリです．NEC Windows 95 のユーザ以外は必ず入手する必要
       があります．

(D) ptex-2.1.5-nec-w95bin.tar.gz
       株式会社アスキーによる，web2c-7.0, web-7.0 上の日本語化された
       バイナリです．NEC Windows 95 のユーザの方は (C) のかわりに
       これを入手して下さい．なおこのパッケージだけは例外的に
       gcc version cygnus-2.7.1-951010 で make しました．
       NEC Windows 95 のユーザでない方は不必要です．

(E) ptex-2.1.5-w32lib.tar.gz :
       日本語 TeX 環境で必要なライブラリです．必ず入手して下さい．

(F) latex.tar.gz :
       LaTeX2e <1997/06/01> patch level 0 のマクロおよびフォーマット
       ファイルです．

(G) platex.tar.gz :
       株式会社アスキーによる pLaTeX2e <1997/07/02>+2 のマクロ
       およびフォーマットファイルです． 


使用したソースは CTAN より入手できる web2c-7.0.tar.gz, web-7.0.tar.gz,
texmflib-7.2.tar.gz ( ライブラリ用 ), CTAN/macros/latex/base/* ,
及び株式会社アスキーによる ptex215i.tar.gz (with three patch files :
patch215itoj , patch215jtok and patch215ktol), plib13-sj.tar.gz,
pl970702s.tar.gz です．

web2c 6.1 による ptex-2.1.4 とはディレクトリ構成などが，かなり
変更されていますので注意して下さい．また ptex-2.1.4 では
ini${X}.exe, vir${X}.exe ( X = tex, ptex, mf ) は別のファイルでした
が，このバージョンでは統一されています．つまり tex.exe, ptex.exe, mf.exe
だけがあります．更にこのバージョンでは mpost.exe ( METAPOST ) も
提供されています．format file などを新たに作成する場合には -ini
オプションをつけて tex, ptex, mf, mpost を実行します． ある format
file に対応する実行ファイルは，拡張子を除いた名前を format file と一致
させてハードリンクあるいはコピーで作成すれば OKです．

--------------------------------------------------------------------------
[2] インストール法

(1) 適当なドライブ ( 例えば c: ) に ( もし無ければ ) /usr/local なる
    ディレクトリを作って下さい。

    c:
    md \usr
    md \usr\local

    以後 c:/usr/local をインストールディレクトリと呼びます．

(2) c:/usr/local をカレントディレクトリとして六つのファイルを展開して
    下さい。

    例: 
    c:
    cd \usr\local
    gzip -cd web2c-7.0-w32bin.tar.gz | tar xvf -
    gzip -cd web2c-7.0-w32lib.tar.gz | tar xvf -
    gzip -cd ptex-2.1.5-w32bin.tar.gz | tar xvf -
    ( NEC Windows 95 では gzip -cd ptex-2.1.5-nec-w95bin.tar.gz | tar xvf - )
    gzip -cd ptex-2.1.5-w32lib.tar.gz | tar xvf -
    gzip -cd latex.tar.gz | tar xvf -
    gzip -cd platex.tar.gz | tar xvf -

    バイナリは c:/usr/local/bin に, ライブラリ等は c:/usr/local/share/texmf
    以下に入ります。またドキュメントは c:/usr/local/share/texmf/doc に入り
    ます。 これが困る人は texmf の親ディレクトリ ( 例では c:/usr/local/share )
    に関しては変更してかまいません。しかし texmf 以下の構成はできるだけく
    ずさないで下さい．可能ならば texmf の親ディレクトリについてもデフォルト
    設定を採用することをお勧めします．特にドライブ c: にデフォルト構成で
    インストールした場合には、以下に述べる環境変数の設定が不要になります。

(3) c:/usr/local/share/texmf/web2c/texmf.cnf を自分用に編集して下さい。
    TEXMF と PKFONTS の値を確認し，必要なら変更するだけで殆どの環境では
    充分なはずです．

(4) PATH に c:\usr\local\bin を追加し，環境変数を以下の例を参考にして設定
    して下さい。
    TEXMF=c:/usr/local/share/texmf    
    TEXMFCNF=.;c:/usr/local/share/texmf/web2c
    TEXEDIT=c:/usr/local/bin/mule +%d %s
    MFEDIT=c:/usr/local/bin/mule +%d %s
    ドライブ c: に上の説明通りにインストールした場合には、TEXMF と
    TEXMFCNF を設定する必要はありません。また PATH の通った場所に mule
    というエディタコマンドがある場合には TEXEDIT, MFEDIT も設定不要です。

(5) NTFS で、リソースキットの ln コマンドをもっておられる方は以下のように
    ハードリンクを作って下さい。
    c:
    cd \usr\local\bin
    ln tex.exe latex.exe
    ln ptex.exe platex.exe
    FAT の場合や、ln.exe が無い場合は
    copy tex.exe latex.exe
    copy ptex.exe platex.exe として下さい。

(6) バイナリディレクトリ ( default は c:/usr/local/bin )にあるスクリプト
    makempx.sh において，変数 MAKEMPX_BINDIR と PATH の値を確認し，
    必要なら書き換えて下さい．
    MakeTeXls-R も配布してありますが，動作には GNU Utilities が必要です．
    ls-R データベースは更新を忘れがちになりますし，これがなくても十分に
    高速ファイルアクセスしますので，作成しないほうが良いでしょう．

    なお、metafont の base file は、環境によって違ったものが必要なので
    入れておりません。各自で環境にあったものを mf.base として作成してから、
    それを c:/usr/local/share/texmf/web2c に移して下さい。
    base file を作るには mf コマンドに -ini オプションを付けて下さい．
    具体的には modes.mf を local.mf なるファイルにコピーします。
    つぎに local.mf 中の不要なパラメータをコメントアウトします。
    つぎに mf.mf なる名前で、内容が
    input plain;
    input local;
    dump
    なるファイルをつくり、 mf -ini  mf  とすると mf.base ができます。

    別に配布する dvipsk-w32.tar.gz には作成済みの mf.base のサンプル
    があります。大抵の環境ではこの mf.base が使用可能と思われます。
    また，MakeTeXPK と MakeTeXTFM も dvipsk-w32.tar.gz で配布します．

------------------------------------------------------------------------
[3] アンインストール
    レジストリは全然さわっておりませんので，コピーしたファイル，新たに
    作成したディレクトリを全て削除し，環境変数をもとに戻せば終わりです．

------------------------------------------------------------------------
[4] 関連ファイル

(00) targzip.lzh
     全てのアーカイブは，展開に tar.exe と gzip.exe を必要とするので，
     お持ちでない方はこれを入手して下さい． LHA があればプログラムを
     取り出せます．適当な一時ディレクトリで lha x targzip.lzh として
     下さい．

(01) dvipsk-w32.tar.gz
     dvipsk-5.66a に株式会社アスキーによって作成された日本語化パッチ
     jpatch p1.3 をあてて Win32 (x86) 用に make したものです。
     dvi ---> ps ドライバです。 MakeTeXPK もサポートしております。
     kpathsea のバージョンは TeX と同じで 3.0 です。日本語を扱うには
     下記の vf-a2bk.tar.gz も必要です。おまけとして MakeTeXTFM
     プログラムも付けておきました ( kpathsea 3.0 and texmflib-7.2 専用 )．
     また，欧文専用のオリジナルの実行ファイルもはいっています．
     文書 dvipsk-w32.txt に従ってインストールして下さい．ちょっと複雑
     なので，丁寧に読んで下さるようお願い致します．
     なお展開は適当な一時ディレクトリで行って下さい．そうすると
     サブディレクトリ dvipsk-w32 ができて，その中に入ります．そこで
     ゆっくり dvipsk-w32.txt を読んで下さい．

(02) makeindex-w32.tar.gz
     旧アスキー jTeX 付属の makeindex プログラムを Win 32 (x86) 用に
     make したものです。日本語も扱えて， kpathsea 3.0 に対応しています．
     下記の mendexk-2.4a は kpathsea 3.0 に対応しているとともに，読み
     に関する辞書が使えるように改善されたものです．
     インストールディレクトリ ( デフォルトは c:/usr/local ) で展開すれば
     インストールできます．

(03) mendexk-w32.tar.gz
     株式会社アスキーと、ソニーの淺山さんによる、mendexk-2.4a を
     Win 32 (x86) 用に make したものです。読みに関する辞書が使え、
     また kpathsea 3.0 のライブラリで link してあります。
     makeindex プログラムです。
     インストールディレクトリ ( デフォルトは c:/usr/local ) で展開すれば
     インストールできます．

(04) oldformat.tar.gz
     LaTeX 2.09, pLaTeX 2.09 および 旧 アスキー pTeX 用の format files
     です。(p)LaTeX 2.09 のソースファイルも大抵は (p)LaTeX2e の 2.09
     互換モードとしてタイプセットできますが、たまに、どうしてもだめな
     ものもあります。そのような場合に備えて 2.09 の環境も作成しておく
     と便利なので提供するものです。必ずインストールディレクトリ
     ( デフォルトは c:/usr/local ) で展開して下さい．
     そうして以下のようにしてコマンドを作成してください。
     c:
     cd \usr\local\bin
     ln tex.exe latex209.exe
     ln ptex.exe ptexold.exe
     ln ptex.exe platex209.exe
     where ln should be replaced by copy in the case of FAT file system.

(05) oldinputs.tar.gz
     oldformat.tar.gz と共に使用する input files です。(p)LaTeX2e の
     packages としても使用可能なものがあると思います。必ず
     インストールディレクトリ ( デフォルトは c:/usr/local ) をカレント
     ディレクトリとして展開して下さい。実際に入る場所は$TEXMF/oldinputs
     となります。

(06) texloader.tar.gz
     Windows 95 の場合にはハードリンクが不可能なので、 kpathsea の機能を
     フルに使用するには ln のかわりに copy によって各コマンドを作成する
     必要がありますが、この場合 copy したぶんだけディスク領域を消費する
     ので、気がすすまないという場合もあろうかと思います。バッチファイル
     では kpathsea の機能をフルに使用できません。このファイルで提供する
     のは、あまりディスク領域を消費しないで同じことを実現しょうというもの
     です。詳細は内部のドキュメントを参照して下さい。ただしアプリケーション
     の内部から呼び出す場合、何らかの不具合があるかも知れません。この場合
     には使用をあきらめ、通常の copy によってコマンドを作成して下さい。
     Windows NT で NTFS を使用し、ln.exe がある場合には入手不要です。
     展開は適当な一時ディレクトリで行って下さい．その一時ディレクトリの
     なかに ( サブディレクトリを作らず ) ファイルができます．

(07) txtutil.tar.gz
     テキストファイルの行末コードを各オペレーティングシステム用に変更
     するだけの簡単なプログラムです。入力ファイルはどの形式でも可です。
     0x0d (Mac) にするもの、0x0a (UNIX) にするもの、 0x0d0x0a (DOS, Windows) 
     にするもの、があります。テキストファイル以外には決して使用しないで下さい。
     ほぼ確実にファイルが破壊されます。
     TeX が書き出すテキストファイルの行末は 0x0a になるようにしています．
     notepad.exe などで読む場合はご面倒ですが todos.exe で 0x0d0x0a に
     変更して下さい．通常のエディタなら無変更で読めるでしょう．
     展開は適当な一時ディレクトリで行って下さい．

(08) vf-a2bk.tar.gz
     dvipsk-w32.tar.gz と共に用いる virtual fonts などです。
     必ずインストールディレクトリ ( デフォルトは c:/usr/local )
     をカレントディレクトリとして展開して下さい．

(09) pdftex-w32.tar.gz
     PDFTeX version 0.11 です．欧文専用です．
     必ず インストールディレクトリ ( デフォルトは c:/usr/local ) で展開
     してください．
     c:
     cd \usr\local
     gzip -cd pdftex-w32.tar.gz | tar xvf -
     次に バイナリディレクトリに行って ( デフォルトは c:/usr/local/bin )
     Windows NT で NTFS なら ln pdftex.exe pdflatex.exe とし，
     Windows 95 あるいは NT で FAT なら copy pdftex.exe pdflatex.exe
     として下さい． texloader.tar.gz 内の実行ファイルを使用して
     pdflatex.exe を作ることもできます．pdftex.fmt , pdflatex.fmt を含みます．
     cm, ams の Bakoma type 1 fonts, latex の Bluesky type 1 fonts を入れて
     おきましたので，このパッケージをインストールすれば即 TeX ソースから
     直接 PDF ( Adobe Portable Document Format ) ファイルを作成できます．
     BlueSky fonts を使う場合には，$TEXMF/tex2pdf/pdftex.map
     の cm fonts の部分の 2 番目のエントリを大文字に変更する必要が
     ありますので，ご注意ください．
     例:
     cmr10 cmr10 6 <cmr10.pfb cmtext.enc
     を
     cmr10 CMR10 6 <cmr10.pfb cmtext.enc
     に変更する．
     TeX や LaTeX2e のソースで，はじめに \pdfoutput=1\relax
     としておけば，出力は DVI ではなく PDF となります．詳しくは
     $TEXMF/tex2pdf/example.tex ( plain PDFTeX のサンプル )
     をご覧ください．
     $TEXMF/tex2pdf/pdftex.map に記述してないフォントも入れてあります
     が，自分で
     msam10  msam10  4  <msam10.pfb
     のように追加すれば使用可能になります．
     また用紙のフルサイズを \pdfpagewidth , \pdfpageheight 変数に
     設定しておけば，出力位置が正常になるようです．

(10) tiff2png-w32.tar.gz
     PDFTeX では PNG format の画像をとり込めるようになっています．
     これは TIFF から PNG へ画像フォーマットを変換するものです．
     引数なしで実行すると使用法を表示します．
     必ずインストールディレクトリ ( デフォルトは c:/usr/local )
     で展開して下さい．
-----------------------------------------------------------------------
[5] sh.exe について
    pTeX-2.1.5 for Win32 において，一部機能を shell script で実現している
    関係上，Korn shell のサブセット sh.exe を バイナリのなかに入れておき
    ました．またこれは dvipsk-w32.tar.gz の中にも同じものが入れてあります．
    ( MakeTeXPK と MakeTeXTFM のため )．これは起動時に copyright notice
    を表示すればバイナリ配布が許されているものです．sh.txt を参照してく
    ださい．配布する sh.exe は Win32 CUI としてコンパイルし直したもので，
    コマンドラインの長さ制限をオリジナルの 1024 から，24576 に大きくして
    あります．初期化ファイルのフルパスを ENV 環境変数で例えば
    ENV=c:/users/default/.profile のように指定しておくと，便利な shell
    として使用することもできます．ドライブ名は普通のように使用できます．
    ディレクトリセパレータは UNIX と同じで，/ ですが，パスセパレータは
    コロン : ではなくてセミコロン ; です．セミコロンは shell の特殊文字
    でもあるので，初期化ファイル .profile で PATH を設定するときは，
    引用符が必要です．
    例： PATH="c:/winnt/system32;c:/bin;c:/usr/bin;c:/usr/local/bin;."
    Korn shell の殆どの機能は実現してあるようで，非常に便利で強力な
    shell です．cmd.exe 用の foo.bat ファイルを実行するために，
    .profile で COMSPEC=cmd.exe としておいてください．
    PATH 上に extension なし， .sh, .ksh, .sub の拡張子をもつもの
    ( 例 foo, foo.sh, foo.ksh, foo.sub ) があると，script として実行
    できます( foo とするだけ ). 最初の行を
    #! c:/bin/sh  とか #! c:/usr/local/bin/perl
    で始めておけば，望みの処理をしてくれます。
    Korn shell については市販の書籍を参考にして下さい．
    sh.exe を 標準の shell として使用しない方は [5]に記した面倒なことは
    気にする必要はありません．
    .profile の例を下に付けておきます。
    なお，古川さん＠ＮＳＷ に教えて戴いて， NEC-Windows 95 でも標準 shell
    として使用可能なようにしてあります．ただしこの場合 AUTOEXEC.BAT で
    環境変数を set KSH_NEC_WIN95=1 のようにして設定しておいて下さい．
    KSH_NEC_WIN95 は実際には定義されておればよく，値は何でもよいです．
# -------------------
# example of .profile
#
PATH="c:/bin;c:/usr/local/bin;c:/winnt/system32;c:/winnt;"
PATH=${PATH}"c:/MSDEV/BIN;c:/usr/bin;"
PATH=${PATH}"c:/usr/local/lib/mule2/bin;"
PATH=${PATH}"c:/usr/local/lib/ispell;"
PATH=${PATH}"c:/cygnus/H-i386-cygwin32/bin;."
#
LIB="c:/MSDEV/lib;c:/MSDEV/mfc/lib;c:/usr/local/lib"
INCLUDE="c:/msdev/mfc/include;c:/msdev/include"
#
alias which='whence -p' # `which xxx' will tell you if executable xxx
                        # exists and if so give its full path name
alias sl='ls -F'	# short list
alias l='ls -alF'	# long list
alias del='rm -i'	# interactive remove
alias h=history		# list history
alias r='fc -e -'	# run history number
alias rd=rmdir		# remove directory
alias md=mkdir		# make directory
alias cd=chd		# change directory and print cwd
alias b='cmd /c'	# for invoking cmd
alias clear='cmd /c cls'
PS1="(hello)# "
#
TERM='pcbios' # may be needed for Congruent's version of vi  
SHELL=c:/bin/sh
TEMP=c:/temp
TMP=$TEMP
TMPDIR=$TEMP
HISTSIZE=300
SH_PATH=c:/bin/sh.exe
export PATH TERM TEMP TMP TMPDIR SHELL HISTSIZE LIB SH_PATH INCLUDE
#
COMSPEC=cmd.exe
export COMSPEC
PGPPATH=c:/usr/local/lib/pgp
TZ=JST-9
export PGPPATH TZ
# function chd
chd ()
{
  builtin cd ${1+"$@"} && echo $PWD
}
set -o emacs
set -o ignoreeof
#
# end of example
# --------------

------------------------------------------
Akira Kakuto  < kakuto@fuk.kindai.ac.jp >
------------------------------------------
