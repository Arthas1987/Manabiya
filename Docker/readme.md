# Dockerを使いながら学ぶ

## 目的

- 実際例を行うことで、Dockerの基礎を勉強する
- Dockerを利用して開発することができる

## 前提

- MacでDockerがインストールされている
> していない場合は[ここ](https://docs.docker.com/docker-for-mac/install/)
- すでに「コンテナー仮想化」知識を獲得した
- GUIではなく、CLIでdockerを操作したい
> とはいえ、GUIとCLI両方活用して勉強するのは一番賢い  
- すでに `image` 、 `repository` 、 `container` をの指していることを理解している

## 使える記事

- [いまさらDockerに入門したので分かりやすくまとめます](https://qiita.com/gold-kou/items/44860fbda1a34a001fc1)
- [Dockerでプログラマは最低限知るべきことが、最速でわかるチュートリアル](https://qiita.com/woz/items/43462398765f8036f3a8)
- [なぜDockerではホストOSと違うOSベースのコンテナイメージが動くのか](https://qiita.com/kirikunix/items/33414240b4cacee362da)

## 課題１

### 課題１で達成したい目標

- とりあえずdockerを触る
- CLIでdockerコンテナを起動する
- GUIでdockerコンテナを起動する

### 1-1 hello-world

#### お題： `docker run hello-world` を実行する

#### 合格基準： 下記のメッセージが出力される

```bash
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```

#### 個人メモ

- 英語だけど、このhelloworldのメッセージを読む価値あり

### 1-2 GUIツールを導入する

#### お題： [portainer](https://github.com/portainer/portainer)を導入する

Githubに手順が書かれているため、導入してみてください

#### 合格基準： http://localhost:9000/#/home へアクセスすると、下記っぽい画面が出てくる

![1-2](img/1-2.png)

### 1-3 nginxコンテナを動かしてみる

#### お題：CLIでnginxコンテナを起動する

#### 合格基準：http://localhost:8888/ へアクセスすると、下記っぽい画面が出てくる

![1-3](img/1-3.png)

#### 個人メモ

- １つコマンドで目標を達成できる

