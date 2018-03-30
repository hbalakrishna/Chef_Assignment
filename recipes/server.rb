package 'httpd'

file '/var/www/html/index.html' do 
  content "<h1>Hello, world! </h1>
          <h2>IPADDRESS: #{node['ipaddress']}</h2>
          <h2>HostName: #{node['hostname']}</h2>"
end

service 'httpd' do
  action [:start,:enable]
end
#I am modified
