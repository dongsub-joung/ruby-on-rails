# FIX PATH OPTION
#path= "C:/Windows/System32/"
temp_path= "/workspaces/ruby-on-rails/mini-project/ransomware"
files= Dir["#{temp_path}/*"]

# for file in files do
temp_file_name= files[0]
File.open(temp_file_name, "w+"){ |file| file.write("JoungDongSub is a sort of hacker\r\n")}
