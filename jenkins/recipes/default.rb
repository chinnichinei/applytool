#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "clamav_install"
include_recipe "jenkins_install"
#include_recipe "ldap_setting"
include_recipe "sudoersd_applytool"
