jenkinsuser = "# for jenkins user (applytool)
Defaults: jenkins !requiretty
jenkins ALL=(ALL) NOPASSWD: /usr/bin/aws s3 *"

file "/home/ec2-user/applytool" do
  owner 'root'
    group 'root'
      mode '440'
        action :create_if_missing
        content jenkinsuser
          end

