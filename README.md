#sprout

##home
 - 議題の一覧の表示
 - 議題のページ(/topic)に飛べる
 - 入力ページに(/form)に飛べる
 - hotな話題をわかりやすく

##new
 - 新たな議題を作れる
 - twitterやfacebookに流せる

###議題
 - 議題名
 - 議題の詳細
 - 期限の設定
 - 作成者名
 - 日付

##topic
 - 二択の投票
 - 票の分布
 - twitterやfacebookに流せる

###コメント欄
 - コメント欄
 - 名前
 - 日付


#チーム開発の風呂ー

##最初にやること

###リードプログラマー以外
まずリードプログラマーのレポジトリを自分の好きなとこにcloneします。

```
git clone https://github.com/g-hyoga/sprout.git
```

そのあと

```
git remote add upstream https://github.com/g-hyoga/sprout.git
```

これでpushやらpullできます。

###リードプログラマー
まずレポジトリを作ります
その後メンバーをCollaboratorsに呼びましょう。
次いで、SettingのBranchesでforce pushを防ぐ設定をします。


##開発が本格的に始まってから

githubにあるissuesを確認して、自分にassignされているissuesの機能を追加していきましょう。
tagにhighが付いているものほど優先度が高いです。

まずブランチを切ります。

``
git branch features/????
``

????の部分は今解決しているissuesに書いてある#の後ろに書いてある数字を入れてください。

例：issuesで#3 -> git branch features/3

その後コードを書き、commitしたくなったら、commitメッセージでは
今実装している機能が実装中であれば、最初にWIP(Work In Progress)と入れておくと、チームメンバーがあなたの実装状況がわかり、便利です。
さらにその後issuesの番号を#のあとに書いておくとリンクができ、わかりやすくなります。

例
```
WIP #3 コメント機能の実装
```

commitがある程度溜まったなら、

```
git push upstream features/???`
```

でpushし、pull requestを送っておきましょう。
mergeは勝手にしないでね。

バグがないと確定したらmergeし、issuesをcloseして、使っていたブランチを消してください


これを繰り返し、機能を実装してゆきます。

自分でも何書いてるかわからなくなってきたので、あとは聞いてね。
取り合えず、ブランチ切ってcommitからのpull requestの流れをやっておくので、参考にしてね
