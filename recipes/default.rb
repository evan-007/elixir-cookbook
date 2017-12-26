#
# Cookbook:: elixir
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash 'install elixir 1.5.0' do
  user 'root'
  code <<-EOC
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
    sudo dpkg -i erlang-solutions_1.0_all.deb
    sudo apt-get update
    sudo apt-get install -y esl-erlang 20.0
    sudo apt-get install -y elixir 1.5.0
  EOC
end
