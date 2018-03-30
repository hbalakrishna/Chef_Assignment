package 'httpd'

template '/var/www/html/index.html' do 
  source 'index.html.erb'
  action :create
end

service 'httpd' do
  action [:start,:enable]
end
#I am modified
