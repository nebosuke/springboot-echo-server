# echoサービス

SpringBoot + Kubernetes 勉強会のために作成した、パラメーターで指定した文字列を text/plain で送り返してくれる単純なWebサービスの実装。

## Build JAR package
以下のコマンドで、Mavenで依存性を解決して、組み込みTomcatで起動する echo-0.0.1-SNAPSHOT.jar を生成する。
```
./mvnw install
```

## Dockerイメージとしてのビルド
```
docker build -t echo-service .
```

## Dockerコンテナで実行

### 標準出力をデタッチして(-d)起動
```
docker run -d -p 8080:8080 echo-service
```

### 起動中のコンテナを表示
```
docker ps
```

### コンテナを停止
```
docker stop {コンテナID}
```

### コンテナを削除
```
docker rm {コンテナID}
```

