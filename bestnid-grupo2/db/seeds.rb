# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creo los usuarios"
Usuario.find_or_create_by(nombre: "Carlos", apellido: "Maidana", email: "a@a", telefono: "0114234514", clave: "123456", fecha_nacimiento: DateTime.new(2001,2,3))
Usuario.find_or_create_by(nombre: "Catalina", apellido: "Perez", email: "b@b", telefono: "0114353152", clave: "123456", fecha_nacimiento: DateTime.new(2001,2,3))
Usuario.find_or_create_by(nombre: "Sergio", apellido: "Ramirez", email: "c@c", telefono: "0114514789", clave: "123456", fecha_nacimiento: DateTime.new(2001,2,3))

puts "Creo las categorias"
animales =Categoria.find_or_create_by(nombre: "Animales")
hogar = Categoria.find_or_create_by(nombre: "Hogar")
tecnologia = Categoria.find_or_create_by(nombre: "Tecnologia")
minerales = Categoria.find_or_create_by(nombre: "Minerales/Piedras")
indumentaria = Categoria.find_or_create_by(nombre: "Indumentaria")
herramientas = Categoria.find_or_create_by(nombre: "Herramientas")
deportes = Categoria.find_or_create_by(nombre: "Deportes")
cocina = Categoria.find_or_create_by(nombre: "Cocina")
antiguedades = Categoria.find_or_create_by(nombre: "Antiguedades")
santeria = Categoria.find_or_create_by(nombre: "Santeria")
automotores = Categoria.find_or_create_by(nombre: "Automotores")
otros = Categoria.find_or_create_by(nombre: "Otros")

puts "Creo los productos"
Producto.find_or_create_by(nombre: "Guantes de acero", descripcion: "Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa", 
	id_owner: 1, cantidad_preguntas: 0, categoria: 6, foto:"http://40.media.tumblr.com/6bc78e251e463fb68362d168fcf38bda/tumblr_nbqngpEAks1tlipbuo1_1280.jpg")
Producto.find_or_create_by(nombre: "Llama", descripcion: "Llama adulta oriunda de Tilcara. Es mansita", 
	id_owner: 2, cantidad_preguntas: 0, categoria: 1, foto: "http://41.media.tumblr.com/6750bde49985d14340294b65cbfac7a2/tumblr_nbsedz4pML1tlipbuo1_1280.jpg")
Producto.find_or_create_by(nombre: "Espejo", descripcion: "Espejo sin marco. Medidas: 0.8m x 1.2m", 
	id_owner: 1, cantidad_preguntas: 0, categoria: 2, foto: "http://40.media.tumblr.com/ad056adadfeeced7f24f918a843a0f60/tumblr_nbsf4rGZFE1tlipbuo1_1280.jpg")
Producto.find_or_create_by(nombre: "Kriptonita", descripcion: "200 gramos de Kriptonita", 
	id_owner: 2, cantidad_preguntas: 0, categoria: 4, foto: "http://41.media.tumblr.com/8e08757ed8fd1c3368e29dc127140ef1/tumblr_nbsewqvU231tlipbuo1_1280.jpg")
Producto.find_or_create_by(nombre: "Aceite y Vinagre", descripcion: "200ml de aceite y 300ml de vinagre. No incluye fascos", 
	id_owner: 3, cantidad_preguntas: 0, categoria: 8, foto: "http://40.media.tumblr.com/f92d39b2c62cf2bc5398797db35ce37d/tumblr_nbsejfmSt21tlipbuo1_400.jpg")

