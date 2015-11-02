app = search(:aws_opsworks_app).first

application app["shortname"] do
  path "/srv/#{app['shortname']}"
  packages ["git"]

  repository app["app_source"]["url"]

  nodejs do
    npm false
    entry_point "server.js"
  end
end
