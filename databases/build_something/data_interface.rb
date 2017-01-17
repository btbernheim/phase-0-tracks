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
puts "This app will hold all of your user and password information so you never have to deal with memorizing unique login information again!" 

more_tries = ""
answer = false 
# until more_tries == "no"
	puts "Would you like to locate, store, update, or delete login information? (locate/store/update/delete)"
	response = gets.chomp
		if response == "store"
			puts "What website do you wish to store information about?"
			website_answer = gets.chomp
			puts "Enter your username:"
			user_name_answer = gets.chomp
			puts "Enter your password:"
			password_answer = gets.chomp
			user_info_db.execute("INSERT INTO info (website, user_name, password) VALUES (?, ?, ?)", [website_answer, user_name_answer, password_answer])
			p user_info_db.execute("SELECT * FROM info")
			answer == true
			elsif response == "locate"
				puts "What website do you need your user name and password for?"
				locate_webiste_answer = gets.chomp
				p user_info_db.execute("SELECT * FROM info WHERE website='#{locate_webiste_answer}'")
				answer == true
			elsif response == "update"
				puts "Which websites login information would you like to update?"
				update_login = gets.chomp
				puts "Enter you new user name."
				new_user_name = gets.chomp
				puts "Enter your new password."
				new_password = gets.chomp
				user_info_db.execute("UPDATE info SET user_name='#{new_user_name}', password='#{new_password}' WHERE website='#{update_login}'")
				p user_info_db.execute("SELECT * FROM info WHERE website='#{update_login}'")
				answer == true
			elsif response == "delete"
				puts "What website login information would you like to delete?"
				delete_login = gets.chomp
				user_info_db.execute("DELETE FROM info WHERE website='#{delete_login}'")
				p user_info_db.execute("SELECT * FROM info")
				answer == true
			else puts "Please enter 'locate', 'store', 'update', or 'delete'."
				answer == false
		end
# 	puts "Would like to look up or store more information?"
# 	more_tries = gets.chomp
# end


# Test
# user_info_db.execute("INSERT INTO info (website, user_name, password) VALUES ('gmail', 'programmer1', 'password')")

# Explores data
# info = user_info_db.execute("SELECT * FROM info")