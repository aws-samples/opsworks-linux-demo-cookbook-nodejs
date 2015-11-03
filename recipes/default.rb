app = search(:aws_opsworks_app).first

execute "ssh-keyscan -H github.com >> /root/.ssh/known_hosts"

application "/srv/#{app['shortname']}" do
  javascript "4"

  file "/root/.ssh/id_rsa" do
    content app["app_source"]["ssh_key"]
    mode 0600
  end

  git "/srv/#{app['shortname']}" do
    repository app["app_source"]["url"]
    revision app["app_source"]["revision"]
  end

  npm_install
  npm_start
end
