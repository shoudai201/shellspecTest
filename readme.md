# shellspecテスト
ShellSpecのテスト実行用のプロジェクト
Dockerの中でShellSpecを動かして検証する
プロジェクト配下をDockerコンテナのworkspaceと同期させてます。

# 使い方
## docker起動

```
docker-compose up --build

docker-compose ps

docker exec -it shellspectest-microps-builder-1 bash
```

### dockerの終了
`docker-compose down`

## ShellSpec初期設定
一度実行すればプロジェクトに設定されるので、２回目以降は不要
```
cd /workspace
shellspec --init
```

shellspeckの実行
```
shellspec src/test
```