# shellspecテスト
ShellSpecのテスト検証用のプロジェクト
Dockerの中でShellSpecを動かして検証できます。
プロジェクト配下をDockerコンテナの`/workspace`と同期させてます。

# 使い方
## 環境構築
### docker起動

```
docker-compose up --build

docker-compose ps

docker exec -it shellspectest-microps-builder-1 bash
```

### dockerの終了
`docker-compose down`

### ShellSpec初期設定
一度実行すればプロジェクトに設定されるので、２回目以降は不要
```
cd /workspace
shellspec --init
```

##  shellspeckの実行
```
shellspec src/test
```

実行例
```
root@04c93781f99c:/workspace# shellspec src/test/
Running: /bin/sh [sh]
...HOGE=hoge
.

Finished in 0.08 seconds (user 0.05 seconds, sys 0.03 seconds)
4 examples, 0 failures

root@04c93781f99c:/workspace# 
```