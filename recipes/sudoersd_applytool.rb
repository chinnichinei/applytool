jenkinsuser = "# for jenkins user (applytool)
Defaults: jenkins !requiretty
jenkins ALL=(ALL) NOPASSWD: /usr/bin/aws s3 *"

file "/etc/sudoers.d/applytool" do
  owner 'root'
  group 'root'
  mode '440'
  action :create_if_missing
  content jenkinsuser
end

file "/etc/sudoers.d/applytool" do
  content jenkinsuser
end

