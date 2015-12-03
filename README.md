# AWS OpsWorks Demo Cookbooks

These are the cookbooks used for the OpsWorks demo for Linux.

# Modifying and using these cookbooks in AWS OpsWorks

The following steps will help you get started with your own AWS OpsWorks custom application based on the demo app:

* Fork the repository and make modifications, add new cookbooks, etc.
* Run `berks package` to create a `cookbooks-*.tar.gz` file on your computer.
* Upload the generated `cookbooks-*.tar.gz` to an Amazon S3 bucket or a web server.
* On the AWS OpsWorks Stack settings toggle [Use custom Chef cookbooks](http://alpha-docs-aws.amazon.com/opsworks/latest/userguide/workingcookbook-installingcustom-enable.html) and set the Repository type and URL.
* On the OpsWorks Stack create a custom layer.
* Add `nodejs_demo` as recipe in `setup` or add your own custom recpies.
* Create an app, using e.g. https://github.com/awslabs/opsworks-linux-demo-nodejs as a source.
* Add and start an instance on the Layer that was created.
* Go to http://public IP or DNS name of your instance/

See also <https://aws.amazon.com/opsworks/>
