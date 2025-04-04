# MyRecipe

## アプリ概要

### 献立アプリ MyRecipe 
このアプリは、レシピの登録・管理を行い、1週間分の献立を作成できるアプリです。献立はカレンダー上に表示され、計画的な食事管理をサポートします

## URL
https://myrecipe-8zpg.onrender.com

テスト用アカウント</br>
- メールアドレス：test1@gmail.com</br>
- パスワード：test1111

Basic認証</br>
- ID : admin
- Pass : 2222


## 利用方法
### レシピを登録・閲覧・編集・削除
1. 新規登録画面から新規登録を行う
2. トップページのレシピ登録からレシピを登録する
3. 自身の登録したレシピはマイページから閲覧可能
4. マイページのレシピ画像をクリックすると詳細ページへ遷移、レシピの編集、削除が可能

### カレンダー表示
1. トップページからレシピを選択し、献立を登録
2. トップページのカレンダーに表示される
3. カレンダーの料理名をクリックするとレシピ詳細画面へ遷移する


## アプリケーションを作成した背景
- 本、レシピサイト、インスタグラムなど複数の媒体で管理している<br>
⇒レシピを一元管理したい。

-  現在はメモアプリに記入している献立予定を記入している<br>
⇒もっと簡単に管理したい。

- 既存のアプリでは登録項目が多すぎて、レシピを登録すること自体が面倒になってしまう。<br>
⇒自分が料理をするのに最低限の情報だけで十分であり、シンプルな管理方法が欲しい

## 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1SHLak4_GSEd0XBd2vHww_Fz3yATfDW4eCqe-rpOVJd0/edit?usp=sharing)

## 機能の紹介
## 画面紹介(一部)

|**トップページ（カレンダー表示）**|      **レシピ一覧表示**       |
|:-----------------------------:|:-------------------------:|
|[![Image from Gyazo](https://i.gyazo.com/ff33cdebba4bc631ce13015e32abf52d.png)](https://gyazo.com/ff33cdebba4bc631ce13015e32abf52d)|[![Image from Gyazo](https://i.gyazo.com/42fc034c0a1394324050b450e1596e80.png)](https://gyazo.com/42fc034c0a1394324050b450e1596e80)|

|   **レシピ詳細表示**      |     **レシピ登録**      |
|:------------------------:|:----------------------:|
|[![Image from Gyazo](https://i.gyazo.com/9b4d7ddf2e28c2eac4a75b6040bd0e14.png)](https://gyazo.com/9b4d7ddf2e28c2eac4a75b6040bd0e14)|[![Image from Gyazo](https://i.gyazo.com/074bc206c34e61a3a4376cdb9a135f44.png)](https://gyazo.com/074bc206c34e61a3a4376cdb9a135f44)|




|     **レシピ編集**       |                        |
|:------------------------:|:----------------------:|
|[![Image from Gyazo](https://i.gyazo.com/e048861198d3cbdd74bbd158f369684f.png)](https://gyazo.com/e048861198d3cbdd74bbd158f369684f)|                |



## 実装予定の機能
- viewの整備
- 検索機能
- スタンプ機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/e2ee9b07672d53920aec613088f4dc0d.png)](https://gyazo.com/e2ee9b07672d53920aec613088f4dc0d)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/8f1179b238447d87a3c74a2fd5524238.png)](https://gyazo.com/8f1179b238447d87a3c74a2fd5524238)

## 開発環境
| カテゴリー | 使用技術 | 
|:-----------|:------------|
| フロントエンド | HTML/CSS | 
| バックエンド | Ruby3.2.0, Rails7.1.5.1 |
| データベース | PostgreSQL 16 |
| 本番環境 | Render |

## 工夫したポイント
- 登録内容は手間にならないようなるべくシンプルに。
- 直感的に操作
- カレンダー表示で献立を一目でわかるように。

<!-- ## 改善点 -->
