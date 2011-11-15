#
# Cookbook Name:: kong
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "python-virtualenv"
package "python-argparse"
package "python-anyjson"
package "python-httplib2"
package "python-nose"
package "python-amqplib"
package "python-pika"
package "python-unittest2"
package "pep8"
package "pylint"

cookbook_file "/opt/kong.tar.gz" do
  source "kong.tar.gz"
  mode "0644"
end

execute "tar" do
  installation_dir = "/opt"
  cwd installation_dir
  command "tar -xvzf /opt/kong.tar.gz"
  action :run
end
