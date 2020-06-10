# Skill Check Sheet
### スタッフのスキルチェック、及び進捗状況の確認・フィードバックできる管理アプリケーション
<img width="1680" alt="スクリーンショット 2020-06-09 14 49 11" src="https://user-images.githubusercontent.com/63991679/84110762-6ff30000-aa60-11ea-941c-05359f982334.png">

# Description
- 前職の小売業にてスタッフを教育するトレーナーという職務携わった中、  
スタッフの現状のスキルレベルや教育をした上でどのくらい定着したのか可視化されておらず把握が難しかった。  
そのため、スタッフのスキルを素早くチェック、把握できる管理アプリを作りたいと思い、制作に至った。
![skillcheck](https://user-images.githubusercontent.com/63991679/84111084-1e974080-aa61-11ea-8842-c2673b7fedc4.gif)

### 出来ること
1. 現状のスキルチェックを簡易につけることが出来る。
2. スキルチェックをグラフで確認することで、自分の強み、弱みがすぐ確認出来る。
3. スキルチェックに対するコメントをすることでしっかりと把握することが出来る。
4. 上長からのフィードバックをいつでも確認することが出来る。

# Demo
### chart.jsでのグラフ実装
- グラフを用いることで、より素早くスキルの把握が可能になった。

<img width="670" alt="スクリーンショット 2020-06-10 11 01 43" src="https://user-images.githubusercontent.com/63991679/84220675-50b2ac00-ab0e-11ea-9213-982674ed3815.png">

### コメント機能の実装（Ajaxによる非同期通信）
- スキルチェック表にコメント機能を入れることで、その期間の取り組んだことや反省を残しておくことが出来るようになった。
- admin（店長）はスタッフ全てのデータが見れるため、スタッフの取り組んできたことによるフィードバックが出来るようになった。

![comment](https://user-images.githubusercontent.com/63991679/84220952-0847be00-ab0f-11ea-9b35-2ace948e41cf.gif)

### collection_selectタグを使用した過去スキル検索機能の実装
- 過去データを確認できるようにすることで、過去のフィードバックや自らの進捗状況の把握が可能になった。

![collection_select](https://user-images.githubusercontent.com/63991679/84220626-34af0a80-ab0e-11ea-9a90-5ae3be13a124.gif)

# DATABASE
<img width="791" alt="スクリーンショット 2020-06-09 14 50 00" src="https://user-images.githubusercontent.com/63991679/84110838-97e26380-aa60-11ea-9c0d-2d4c72773ac5.png">

# Requirement
- Ruby(2.5.1)
- Rails(5.2.4.2)
- Git(2.26.1)
- heroku(7.42.1)

## Others
HTML・CSS・JavaScript・jQuery・MYSQL 

# Future Function
- スタッフ別のスキルチェック一覧表表示
- スタッフ別の最新スキルチェックグラフ一覧表示

# Application
https://kings-market.herokuapp.com/

# Author
西村　太一  
nishi.made.t.9210@gmail.com
