# Mapdog

安装依赖

  * 本地安装elixir以及相关库, 安装docker
  * `mix deps.get` 获取依赖
  * `docker-compose -f docker/docker-compose.yml up -d` 启动docker 我们数据库在docker中运行不用本地安装postgreSQL
  * migrate database `mix ecto.migrate`

启动本地开发环境
`mix mix.server` 环境会启动在 [`localhost:4000`](http://localhost:4000)

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
