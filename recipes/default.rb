#
# Cookbook Name:: mutt
# Recipe:: default
#
# Copyright (C) 2015 Zan Loy
#

package node[:mutt][:package]

template node[:mutt][:config_file] do
  variables({
    :options => node[:mutt][:options]
  })
end

file '/etc/Muttrc.local'
