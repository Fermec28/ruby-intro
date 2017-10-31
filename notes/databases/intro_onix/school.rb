# Bases de datos

# NoSQL y SQL

# Mongo
# CouchDB
# Firebase

# SQL
# RDMS
# MySQL => opensource
# SQLserver => pagas
# Oracle => pagas
# Sqlite3 => opensource
# MariaDB=> opensource
# PostgresSQL => opensoure
# Access => pages

# La base de datos es un conjunto de tablas

# Esquema .schema
# Tablas
  # Filas => Registro
  # Columnas => Atributo

# Asociaciones

# One to Many
# Many to Many
# One to One


# cohorts
   name, student_id
1  onix,
2  emeralds

# students

# deme todos los estudiantes de onix 1

#    name, email, cohort_id
# 1. angie, fas, 1, 1
# 2. Ferney, fsadfs, 1
# 3. Pepito, fasdf, 2

# # Teachers

# # deme todos los estudiantes de onix 1

#    name, cohort_id
# 1. angie
# 2. Ferney
# 3. Pepito


# CRUD

require 'sqlite3'

# Open a database
db = SQLite3::Database.new "school.db"


# Create a table
# HEREDOCS

rows = db.execute <<-SQL
  create table numbers (
    name varchar(30),
    val int
  );
SQL

# Execute a few inserts
{
  "one" => 1,
  "two" => 2,
}.each do |pair|
  db.execute "insert into numbers values(?)", []
end












































# require 'sqlite3'
# # Open a database
# db = SQLite3::Database.new "school.db"

# p db.execute("select * from students;")

# student = ["Angie", 'a@b.com']

# db.execute("insert into students (name, email) values (?,?)", student)

# p db.execute("select * from students;")
