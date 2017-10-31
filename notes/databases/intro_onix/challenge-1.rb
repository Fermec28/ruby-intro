require 'sqlite3'


db = SQLite3::Database.new 'school.db'

db.execute <<-SQL
  INSERT INTO students
  (first_name , last_name, gender, birthday, email, phone)
  VALUES
  ('jane', 'smith', 'female', '1997-7-20', 'abc@hi.com', '123.321.2323');
SQL

 students
 id, name, email
 1    juan  a@a.com

result = [
  {id: 1, name: 'juan', 'a@a.com'},
  [],
]

result = db.execute <<-SQL
  select * from students;
SQL



