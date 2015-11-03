app = search(:aws_opsworks_app).first

app_path = "/srv/#{app['shortname']}"
application app_path do
  javascript "4"

  app_tarball_path = ::File.join(Chef::Config[:file_cache_path], "#{app['shortname']}.tar.gz")
  remote_file app_tarball_path do
    source app["app_source"]["url"]
  end

  execute "tar xfz #{app_tarball_path} -C #{app_path} --strip-components=1"

  npm_install
  npm_start
end
