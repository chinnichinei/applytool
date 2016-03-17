default['jenkins']['rpm'] = "jenkins-1.645-1.1.noarch.rpm"
default['jenkins']['rpm_url'] = "http://pkg.jenkins-ci.org/redhat/#{node['jenkins']['rpm']}"

default['jenkins']['freshclam_loglocation_comment'] = "#UpdateLogFile /var/log/freshclam.log"
default['jenkins']['freshclam_loglocation'] = "UpdateLogFile /var/log/freshclam.log"
