
Install swagger-codegen.

```shell
brew install swagger-codegen@2
```

swagger-codegen help.

```shell
swagger-codegen help generate
```

Generate code.

```shell
swagger-codegen generate -i https://esi.evetech.net/latest/swagger.json -l ruby -o . --config swagger_config.json --git-repo-id eve_open_api --git-user-id mstark --http-user-agent eve_open_api
```