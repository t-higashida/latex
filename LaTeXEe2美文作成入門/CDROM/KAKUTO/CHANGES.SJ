Changes.euc-japan
                pTeX-2.1.5 for Win 32 (x86) Changes log

アスキー(株)による日本語化の部分はベータ版 (β11) です．ただしもしおかしな振る
舞いをする場合，オリジナルとは無関係で Win32 への移植によるものかもしれません
ので，アスキー(株)へ直接問いあわせることはしないで下さい．この文書の最後の
アドレスへ電子メールでご連絡をお願いします．
---------------------------------------------------------------------

[1997/08/11]
mendexk のバージョンが 2.4a にあがりました．また makeindex もちょっと
訂正しました．変更ファイルは次の二つです．
(1) mendexk-w32.tar.gz
(2) makeindex-w32.tar.gz
なお，他のファイルも更新されているものがありますが，これらは内部の
ドキュメントや，デフォルトの texmf.cnf を書きかえただけであり，肝心
なものは何も変更しておりませんので，既に持っておられる場合には間違って
入手されないほうがよいです．

[1997/08/09]
pTeX-2.1.5 が Beta-10 から Beta-11 になりました．変更ファイルは
次の四つです．
(1) ptex-2.1.5-w32bin.tar.gz
(2) ptex-2.1.5-nec-w95bin.tar.gz
(3) platex.tar.gz
(4) oldformat.tar.gz

[1997/08/08]
mendexk が version 2.3h から version 2.3i になりました．変更ファイルは
mendexk-w32.tar.gz だけです．他のファイルで日付けが変更になっているの
は，ドキュメントを入れ替えただけです．

[1997/08/06]
makeindex.exe におけるスタイルファイルサーチに関して，kpathsea 3.0
に対応させました．変更ファイルは makeindex-w32.tar.gz です．
他のファイルで日付けやサイズがが変更になっているのは，文書などを
変更しただけです．

[1997/08/04]
Beta-9 から Beta-10 になりました．禁則処理関係の問題の改善が
なされています．また ( Win32 版の ) mendexk でソートが不正常だった
ので修正しました．変更ファイルは次の五つです．
(1) ptex-2.1.5-w32bin.tar.gz
(2) ptex-2.1.5-nec-w95bin.tar.gz ( NEC Windows 95 の場合の (1) の代替え )
(3) platex.tar.gz
(4) oldformat.tar.gz
(5) mendexk-w32.tar.gz

[1997/08/01]
dvipsk-w32.tar.gz の訂正について．
getdestdir.exe にちょっとした不具合があったので訂正しました．
MakeTeXTFM と， kpathsearch 方式の MakeTeXPK に影響があります．

[1997/07/31]
Beta-8 から Beta-9 になりました．残っていた禁則処理関係のバグが
フィックスされています．また mendexk が 2.3g から 2.3h になりま
した．変更ファイルは次の五つです．
(1) ptex-2.1.5-w32bin.tar.gz
(2) ptex-2.1.5-nec-w95bin.tar.gz ( NEC Windows 95 の場合の (1) の代替え )
(3) platex.tar.gz
(4) oldformat.tar.gz
(5) mendexk-w32.tar.gz
すべてインストールディレクトリ ( 推奨は c:/usr/local ) で展開すれば
よくなっています．ただし上書き可能になっていないといけません．

[1997/07/26]
将来の訂正をできるだけ小部分ですませるため，ファイル構成を大きく
変更しました．またインストール作業ができるだけ単純になるように
個々のファイルの内部も変更しました．詳細は README.1st.euc-japan
をご覧下さい．まだ内容がバージョンアップしたわけではありませんから
Beta-8 を入手している方は何も入手する必要はありません．今後は
バージョンアップの場合に，小さなファイルを入手して戴くだけでよく
なります．

[1997/07/14]
Beta-7 から Beta-8 になりました．禁則処理関係のバグがフィックス
されています．またスペース挿入の方法が変更されています．詳しくは
$TEXMF/doc/ptex/ptexskip.tex をご覧下さい．変更ファイルは
(1) ptex-2.1.5-w32bin.tar.gz
(2) ptex-2.1.5-w32lib.tar.gz
(3) nec-w95-bin.tar.gz
(4) oldformat.tar.gz
の四つです．他にも日付のかわっているファイルがありますが，意味の
ある変更はしておりません．

[1997/07/11]
PDFTeX 0.11 を置いたのに対応して， dvipsk-w32.tar.gz に含まれる
フォント類を少し充実しました．変更ファイルは dvipsk-w32.tar.gz
です．また PDFTeX 用の画像フォーマット変換ツールとして
tiff2png-w32.tar.gz をあらたに置きました．

[1997/07/10]
PDFTeX 0.11 をサポートしました．新ファイルは pdftex-w32.tar.gz
です．TeX ソースから直接 PDF を作成できます．
また pdftex 用のものを追加したので texloader.tar.gz を変更しました．
さらに pLaTeX2e が <1997/07/02>+1 になったので，
ptex-2.1.5-w32lib.tar.gz も更新しました．

[1997/07/07]
ディスク上のファイル名が platex.exe でなくて，platex.EXE ならうまく
行かなかったと思います．この点を修正しました．また画面へのメッセージ
出力が遅かったので，速くしました．さらに dvipsk-w32.tar.gz で，
type 1 font をチェックするルーティンに最新のものを使用しました．
同時に type 1 font の チェックをはずしたバージョンも入れました．
変更ファイルは次の４つです．
(1) ptex-2.1.5-w32bin.tar.gz
(2) nec-w95-bin.tar.gz
(3) dvipsk-w32.tar.gz
(4) mendexk-w32.tar.gz

[1997/07/04]
空のファイル名を入力した場合に abnormal program termination とならない
ように変更しました．ファイル名がわからずに終了できないようになったら
tools パッケージをインストールしている場合には x リターンとして下さい．
その他の場合には Control Z リターンとするか Control C として下さい．
この更新が伝染するものはすべて変更しましたので変更は大量になりました．
変更ファイルは次の六つです．
(1) ptex-2.1.5-w32bin.tar.gz
(2) ptex-2.1.5-w32lib.tar.gz
(3) nec-w95-bin.tar.gz
(4) dvipsk-w32.tar.gz
(5) mendexk-w32.tar.gz
(6) oldformat.tar.gz

[1997/07/03]
LaTeX2e が <1997/06/01> patch level 0 に、pLaTeX2e が <1997/07/02>+0
になりました。変更ファイルは
ptex-2.1.5-w32lib.tar.gz
ptex-2.1.5-w32bin.tar.gz ( document のみなので入手不要 )
です。

[1997/07/02]
Beta6 から Beta7 になりました．また Cygnus bash を shell として
用いる場合に //d/usr/local/bin/platex のようにフルパスを指定して
実行してもエラーにならないように変更しました．変更ファイルは
dvipsk-w32.tar.gz , mendexk-w32.tar.gz , nec-w95-bin.tar.gz ,
oldformat.tar.gz , ptex-2.1.5-w32bin.tar.gz ,
ptex-2.1.5-w32lib.tar.gz の六つです．

[1997/06/27]
NEC Windows 95 で sh.exe を interactive shell として使おうとすると，
入力できないキーがあって使用不可だったのですが，この問題を
古川さん＠ＮＳＷ が解決して下さいました．古川さんによるパッチを
あてて make した NEC Windows 95 専用の sh.exe を nec-w95-bin.tar.gz
に入れました．

[1997/06/20]
大部分のバイナリを VC++ 5.0 で make したものに置きかえました．
バイナリのサイズが若干小さくなりました．変更ファイルは
ptex-2.1.5-w32bin.tar.gz , dvipsk-w32.tar.gz , mendexk-w32.tar.gz
の三つです．

[1997/06/19]
\ybaselineshift コマンドを使用すると，場合によってはメモリリード
アクセス違反で異常終了することがあったのですが，このバグがフィックス
されました．なお， \ybaselineshift, \tbaselineshift コマンドは
未完成で， text のみにしか有効でないそうです．文章中の数式などにも
無効です．なお変更ファイルは ptex-2.1.5-w32bin.tar.gz ,
ptex-2.1.5-w32lib.tar.gz , nec-w95-bin.tar.gz , oldformat.tar.gz
の四つです．

[1997/06/18]
Beta-5 から Beta-6 に バージョンアップしました。 \ybaselineshift
\tbaselineshift に関係するバグがフィックスされています。なお、この
バグは TeX3 以前の pTeX から存在したものだそうです。変更ファイルは
ptex-2.1.5-w32bin.tar.gz と ptex-2.1.5-w32lib.tar.gz および
oldformat.tar.gz です。
また， NEC Windows 95 専用の追加バイナリ nec-w95-bin.tar.gz を
置きました． NEC Windows 95 ユーザの方はこれも追加入手して下さい．

[1997/06/06]
dvipsk-w32.tar.gz について． mf.base で 400(nexthi) が間違って
いたので訂正しました。自分で mf.base を作成されている方は再入手
する必要はありません．

[1997/06/04]
README.1st.euc-japan に、NEC PC98系の機械上の Windows 95 で、
コンソールに日本語を表示するような場合、不正処理で落ちること
がある旨を記しました。

[1997/06/02]
dvipsk-w32.tar.gz について． modes をちょっと変更し，従って
MakeTeXPK スクリプトも変更しました．自分で mf.base を作成されて
いる方は再入手する必要はありません．
118(pcprevw), 160(nectzo), 180(lqlores), 240(canonlbp)
300(cx), 320(neclm), 360(nechi), 400(nexthi), 600(canonex)
としてあります．

[1997/05/26]
ptex-2.1.5-w32bin.tar.gz について。C ソースのコンパイル中に Warning が
出ないようにしただけです。実質上何も変わっていないと思います。
なお、 Windows 95 ( on NEC ) で platex が不正処理で落ちることがたまに
あるという報告が寄せられていますが、原因はまだわかっていません。

[1997/05/21]
ptex-2.1.5-w32lib.tar.gz に ascgrp フォントが抜けていたので、追加しました。

[1997/05/19]
ファイル名拡張子をコマンドラインに陽に与えた場合，一部 UNIX と同じように
大小文字を区別して解釈されていたのを，区別しないようにしました．( 例えば
foo.tex あるいは foo.TEX があるとき， latex foo.TEX とすると UNIX と違っ
て foo.tex しか無い場合にもエラーにはなりませんが，出来るファイルは
foo.TEX.dvi , foo.TEX.aux ,foo.TEX.log などでした． latex foo や
latex foo.tex の場合には foo.dvi ,foo.aux , foo.log などが出来ていました.
これは .TEX が標準の拡張子として登録されていないので当たり前のことなので
すが，Windows NT/95 では混乱が生じる可能性があるので，latex foo.TEX とし
ても foo.dvi などが作成されるようにしました．)
変更ファイルは ptex-2.1.5-w32bin.tar.gz だけです．
( 全てのコマンドについて上のような訂正をしたわけではなく，変更されている
のは ptex-2.1.5-w32bin.tar.gz 内の tex.exe, ptex.exe, mf.exe, mpost.exe
なる四つのファイルだけです．)

[1997/05/14]
Beta-4 から、Beta-5 になりました。変更ファイルは
oldformat.tar.gz
ptex-2.1.5-w32bin.tar.gz
ptex-2.1.5-w32lib.tar.gz
texloader.tar.gz
および README files です。

[1997/05/13]
texloader.tar.gz が Win 95 で額面どおり動かなかったようなので、
訂正してみました。

[1997/05/12]
vf-a2bk.tar.gz において、 rmlv.tfm と rml.tfm が同じものになっていたので
正しいものに入れ換えました。また README.1st.euc-japan に、知られている
バグを記しました。

[1997/05/09]
TeX 3.1415 ( web2c-6.1 ) をベースにしたものから、TeX 3.14159 ( web2c-7.0 )
をベースにしたもの ( pTeX-2.1.5 ) に全てバージョンアップしました．変更され
ていないファイルは vf-a2bk.tar.gz, txtutil.tar.gz および targzip.lzh の三つ
だけです．kpathsea 3.0 になった関係でディレクトリ構造がおおきく変更されて
います．従って一応変更されたものについては、全てのファイルを入手して下さい．
-----------------------------------------
Akira Kakuto < kakuto@fuk.kindai.ac.jp >
-----------------------------------------
