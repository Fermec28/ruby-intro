ORM

Object Relational Mapping
Patron de diseño




         ORM
SQL   ---------   Ruby

tablas --------> Clase
filas  --------> Instancia
campo  --------> Atributo


Tabla            Clase
Students         Student



<<-SQL
  select * from students
SQL

<<-RUBY
  students = Student.all
RUBY



students = []
results.each do |row|
  students << Student.new(row)
end
students


1. Student.all
2. result = db.execute("select * from students;")
3. puts results => [
  {name: 'juan', last_name: 'gomez', age: 37},
  ['angie', 'vanegas', 12]
]
4. iterar sobre results
  4.1 para cada fila
    4.1.1 Instancias un Student
      4.1.2 Student.new()


pepito = Student.new({name: 'pepito', last_name: 'perez', age: 41})
marcela = Student.new({name: 'marcela', last_name: 'perez', age: 41})

pepito.save
marcela.save

1. db.excute("insert into students (name, last_name, age) values (?,?,?)", marcela)

Student.all








Active Record

Boilerplate

- Migraciones
  <!-- - creacion de tablas -->
  <!-- - modificacion de tablas -->

- Modelos
  - Validaciones
  - Asociaciones
  <!-- - queries -->
