require 'sqlite3'

user_info_db = SQLite3::Database.new("user_info.db")

create_info_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS info(
		id INTEGER PRIMARY KEY,
		website VARCHAR(255),
		user_name VARCHAR(255),
		password VARCHAR(255)
	)
SQL

# Call on user_info_db made earlier
user_info_db.execute(create_info_table)

puts "Hello! Welcome to the User Information Storage App."
puts "This app will hold all of your user and password information so you never have to deal with memorizing unique passwords and users again!" 

more_tries = ""
answer = false 
until more_tries == "no"
	puts "Would you like to locate or store a user name and password? (locate/store)"
	response = gets.chomp
	until answer == true
		if response = "store"
			puts "What website or app do you wish to store information about?"
			website_answer = gets.chomp
			puts "Enter your username:"
			user_name_answer = gets.chomp
			puts "Enter your password:"
			password_answer = gets.chomp
			user_info_db.execute("INSERT INTO info (website, user_name, password) VALUES (#{website_answer}, #{user_name_answer}, #{password_answer})")
			answer == true
			elsif response = "locate"
				puts "What website do you need your user name and password for?"
				locate_webiste_answer = gets.chomp
				user_info_db.execute("SELECT * FROM info WHERE website=#{locate_webiste_answer}")
				answer == true
			else puts "Please enter 'locate' or 'store'."
				aanswer == false
		end
	end
	puts "Would like to look up or store more information?"
	more_tries = gets.chomp
end


# Test
# user_info_db.execute("INSERT INTO info (website, user_name, password) VALUES ('gmail', 'programmer1', 'password')")

# Explores data
# info = user_info_db.execute("SELECT * FROM info")