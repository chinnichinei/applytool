
  package 'java-1.7.0-openjdk' do
    action :install
  end
    
  remote_file "/tmp/" + node["jenkins"]["rpm"] do
    source node["jenkins"]["rpm_url"]
    owner "root"
    group "root"
    mode "0755"
  end
            
  package "jenkins" do
    action :install
    source "/tmp/" + node["jenkins"]["rpm"]
    #version "1.645"
  end
                  
                          
  service "jenkins" do
    action [:enable, :start]
  end

#  JENKINS_URL = "http://cyn-elb-57950158.ap-northeast-1.elb.amazonaws.com/"

#  execute "install-plugin" do
#    user "root"
#    command <<-_EOH_
#      wget -O jenkins-cli.jar #{JENKINS_URL}/jnlpJars/jenkins-cli.jar
#      java -jar jenkins-cli.jar -s #{JENKINS_URL} install-plugin git
#      java -jar jenkins-cli.jar -s #{JENKINS_URL} safe-restart
#    _EOH_
#    action :run
#  end
  
#  service "jenkins" do
#    action :restart
#  end
