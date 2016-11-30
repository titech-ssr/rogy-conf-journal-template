# ロボット技術研究会 研究報告書

## Build pdf
```
$ latexmk book.tex
```

## Put TeX files
- 原稿ファイルは `sample/sample-article1.tex` を参考に書き、 `main` ディレクトリ以下の適切な場所へ置く。
- `main/files.tex` の適切な part で `\subfile` によって原稿ファイルをインクルードする。

`main/files.tex` の内容は `sample/files.tex` を参考にして作る。

## Branching

### テンプレート
- 変更は `feature/poyo` のようなブランチを作って行う。
- 完了した変更は `develop` ブランチへ merge する。
- `develop` ブランチのテンプレートですべての原稿が問題なく処理できるとわかった場合、 `master` ブランチへ merge する。
  * `master` は十分に安定していることが要求される。

### 原稿リポジトリ
- 原稿や最終的な成果物を生成するデータは、テンプレートとは別のリポジトリで管理する。
  * テンプレートのリポジトリをリモートブランチとして登録する。
- 管理者は、適宜テンプレートをリモートブランチから pull/merge する。
  * 不具合が出れば、原稿やテンプレートを修正する。

### 原稿を書く人
- 原稿リポジトリの指定されたブランチへ変更を行うだけ。
  * 派生して別のブランチを作って merge しても良い。

## For TeXworks(maybe Windows only)
- デフォルトのタイプセットに `upLaTeX` がない場合設定する必要がある。
- TeXworksの左上のラジオボタン編集から設定を開く。
- タイプセットを選択する。
- 以下を新規作成(＋印のアイコンをクリック)する。
```
名前: upLaTeX(ptex2pdf)
プログラム: ptex2pdf
引数: -u
      -l
      -ot
      $synctexoption -no-guess-input-enc -kanji=utf8
      $fullname
```
- エディタに戻りタイプセットを `upLaTeX(ptex2pdf)` に指定して `book.tex` をコンパイル/実行すればよい。
- cf. [TeXworks/設定](https://texwiki.texjp.org/?TeXworks%2F%E8%A8%AD%E5%AE%9A%2FWindows#r7f9a2a4)
