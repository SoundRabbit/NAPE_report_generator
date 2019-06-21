# NAPE_report_generator

数値解析およびプログラミング演習のレポートをYAMLから生成するスクリプト

## 使い方

### solの場合

#### 1. `repgen.rb` をダウンロードし、sol上の任意のディレクトリに置きます。

#### 2. レポート用のYAMLファイルを作成します。

レポートのサンプル
```
執筆中...
```

#### 3. report.txtを生成します。

下のコマンドを実行すると、 `repgen.rb` があるディレクトリに `report.txt` が生成されます。

```
> cd [repgen.rbがあるディレクトリへのパス]
> ruby repgen.rb [レポートにしたいYAMLファイルへのパス]
```

レポートにしたいYAMLファイルを `report.yaml` として保存し、下のコマンドを実行すると、 `report.yaml` があるディレクトリに `report.txt` が生成されます。

```
> cd [report.yamlがあるディレクトリへのパス]
> ruby repgen.rb report.yaml
```

**良く分からない場合、 `report.yaml` を自身のホームディレクトリ（ログインしたときにいるディレクトリ）に作成して、以下のコマンドを実行してください。**

```
執筆中...
```
