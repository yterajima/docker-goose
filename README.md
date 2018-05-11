# docker-goose

Golang 製マイグレーションツール Goose 実行用イメージ

## 使い方

```
$ docker run -e "GOOSE_ENV=development" -v /path/to/goose/repository:/repository yterajima/goose:latest 
```
