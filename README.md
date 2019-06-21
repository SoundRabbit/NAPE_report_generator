# NAPE_report_generator

数値解析およびプログラミング演習のレポートをYAMLから生成するスクリプト

## 使い方

### solの場合

#### インストール

`repgen.rb` をダウンロードして、 `ruby repngen.rb [入力ファイル名] >> [出力ファイル名]` と実行するだけなのですが、わからない場合は下のコマンドを実行してください。

##### 最初の1回目だけ、準備として必要な作業

```
$ mkdir ~/.neunyan/
$ cd .neunyan
$ wget "https://raw.githubusercontent.com/neunyan/NAPE_report_generator/master/repgen.rb"
```

##### レポートを生成するたびに必要な作業

教本準拠で、emacsの場合についてです。以下の操作でreport.yamlからreport.txtが生成されます。ディレクトリとファイル名はなんでもよいのですが、ここでは例として示しておきます。

```
$ mkdir ~/NAPE/#[授業番号]
$ cd ~/NAPE/#[授業番号]
$ emacs report.yaml

--- emacsでレポートを作成して保存する ---

$ ruby ~/.neunyan/repgen.rb/report.yaml >> report.txt
```
### ありがちなエラーと確認事項

#### No such file or directory @ rb_sysopen - XXXXXXXXXX (Errno::ENOENT)No such fil

1. レポートにするYAMLファイルの名前はあっていますか？
1. `file:` に指定したファイル名のファイルは存在しますか？

