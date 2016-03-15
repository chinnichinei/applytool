
package "clamav" do
  action :install
  end

file "/etc/freshclam.conf" do
  _file = Chef::Util::FileEdit.new(path)
  _file.search_file_replace_line(/Example/, '#Example')
  _file.insert_line_if_no_match(/Example/, '#Example')
  content _file.send(:editor).lines.join
end

file "/etc/sysconfig/freshclam" do
  _file = Chef::Util::FileEdit.new(path)
  _file.search_file_replace_line(/FRESHCLAM_DELAY=disabled-warn  # REMOVE ME/, '#FRESHCLAM_DELAY=disabled-warn  # REMOVE ME')
  _file.insert_line_if_no_match(/FRESHCLAM_DELAY=disabled-warn  # REMOVE ME/, '#FRESHCLAM_DELAY=disabled-warn  # REMOVE ME')
  content _file.send(:editor).lines.join
end

service "clamav" do
  action [:start, :enable]
end


