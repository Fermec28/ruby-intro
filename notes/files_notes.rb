lines = File.readlines("tareas.txt")

File.open("tareas.txt", "a+") do |file|
  file.puts("2, escribir codifgo, false")
end

File.delete("tareas.txt")
