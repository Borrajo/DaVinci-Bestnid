# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creo los usuarios"
Usuario.create(nombre: "Carlos", apellido: "Maidana", email: "a@a", telefono: "011 4234514", clave: "123456", fecha_nacimiento: DateTime.new(2001,2,3))
Usuario.create(nombre: "Catalina", apellido: "Perez", email: "b@b", telefono: "011 4353152", clave: "123456", fecha_nacimiento: DateTime.new(2001,2,3))
Usuario.create(nombre: "Sergio", apellido: "Ramirez", email: "c@c", telefono: "011 4514789", clave: "123456", fecha_nacimiento: DateTime.new(2001,2,3))

puts "Creo los productos"
Producto.create(nombre: "Guantes de acero", descripcion: "Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa", 
	id_owner: 1, cantidad_preguntas: 0, categoria: "")
Producto.create(nombre: "Llama", descripcion: "Llama adulta oriunda de Tilcara. Es mansita", 
	id_owner: 2, cantidad_preguntas: 0, categoria: "Mascotas")
Producto.create(nombre: "Espejo", descripcion: "Espejo sin marco. Medidas: 0.8m x 1.2m", 
	id_owner: 1, cantidad_preguntas: 0, categoria: "")
Producto.create(nombre: "Kriptonita", descripcion: "200 gramos de Kriptonita", 
	id_owner: 2, cantidad_preguntas: 0, categoria: "")
Producto.create(nombre: "Aceite y Vinagre", descripcion: "200ml de aceite y 300ml de vinagre. No incluye fascos", 
	id_owner: 3, cantidad_preguntas: 0, categoria: "")