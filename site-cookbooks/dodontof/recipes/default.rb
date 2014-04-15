#
# Cookbook Name:: dodontof
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{git ruby}.each do |pkg|
    package pkg do
        action :install
    end
end

user "dodontof" do
    comment "dodontof"
end

bash "set locale ja" do
    user "root"
    code <<-EOH
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
    EOH
end
