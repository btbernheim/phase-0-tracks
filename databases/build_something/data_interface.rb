require 'sqlite3'
require 'faker'

user_info_db = SQLite3::Database.new("user_info.db")