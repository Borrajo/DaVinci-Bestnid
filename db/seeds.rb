# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creo los usuarios"
User.create(nombre: "Carlos", apellido: "Maidana", email: "carlos_bestnid@hotmail.com", telefono: "011411234514",foto: "https://pbs.twimg.com/profile_images/1119269505/0509071614Peter_Griffin.jpg", password: "12345678", fecha_nacimiento: Date.new(1992,05,10))
User.create(nombre: "Catalina", apellido: "Perez", email: "catalina_bestnid@hotmail.com", telefono: "0114353152",foto: "http://www.diariouno.com.ar/export/1367952609367/sites/diariouno/imagenes/2013/05/07/-_marge_simpson.jpg_274898881.jpg" , password: "12345678", fecha_nacimiento: Date.new(1991,07,15))
User.create(nombre: "Sergio", apellido: "Ramirez", email: "sergio_bestnid@hotmail.com", telefono: "0114514789",foto: "http://asapblogs.typepad.com/photos/uncategorized/2007/06/21/ap060228044420.jpg", password: "12345678", fecha_nacimiento: Date.new(1993,07,15))
User.create(nombre: "Admin", apellido: "Admin", email: "bestnid.corp@gmail.com", telefono: "0114514789",foto: "http://upload.wikimedia.org/wikipedia/commons/b/b9/User_admin.svg", password: "12345678", fecha_nacimiento: Date.new(1993,07,15), admin: true)
User.create(nombre: "Facundo", apellido: "Fuentes", email: "faku.f@live.com.ar", telefono: "011411234514",foto: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/2013_4625140467064_91476818_n.jpg?oh=b20e328fb682f072314da4fd79e6dc71&oe=550E149E&__gda__=1427488352_4a0a7bdfb05c741d7f2493793c0b681c", password: "12345678", fecha_nacimiento: Date.new(1992,05,10))
User.create(nombre: "Cristan", apellido: "Campagna", email: "campagna.cristian@gmail.com", telefono: "0114353152",foto: "https://scontent-a-atl.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/10702082_10205015461210048_1693552308161592353_n.jpg?oh=5b602e4b76ea785e29e3a3686145598f&oe=54FDCF9B" , password: "12345678", fecha_nacimiento: Date.new(1991,07,15))
User.create(nombre: "Manuel", apellido: "Borrajo", email: "borrajo@hotmail.com", telefono: "0114514789",foto: "https://scontent-a-atl.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/404854_10152515693800632_222306357_n.jpg?oh=c05a4493ca95022ca67c7d186d50ca2e&oe=55151246", password: "12345678", fecha_nacimiento: Date.new(1993,07,15))
User.create(nombre: "Juan", apellido: "Labrune", email: "juampacabezon@hotmail.com", telefono: "0114514789",foto: "https://scontent-a-atl.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/535922_10204707248461864_6269326096941293272_n.jpg?oh=388879d37b6e9d1404a797adda5d87db&oe=550C1595", password: "12345678", fecha_nacimiento: Date.new(1993,07,15))
User.create(nombre: "Nicolas", apellido: "Galdamez", email: "ngaldamez@lidi.info.unlp.edu.ar", telefono: "0114514789",foto: "http://img3.wikia.nocookie.net/__cb20140328193654/video-game-brawl-royal-wrestling/images/1/11/Bart_Simpson.jpg", password: "12345678", fecha_nacimiento: Date.new(1993,07,15))


puts "Creo las categorias"
animales =Categoria.find_or_create_by(nombre: "Animales")
hogar = Categoria.find_or_create_by(nombre: "Hogar")
tecnologia = Categoria.find_or_create_by(nombre: "Tecnologia")
minerales = Categoria.find_or_create_by(nombre: "Minerales/Piedras")
indumentaria = Categoria.find_or_create_by(nombre: "Indumentaria")
herramientas = Categoria.find_or_create_by(nombre: "Herramientas")
deportes = Categoria.find_or_create_by(nombre: "Deportes")
cocina = Categoria.find_or_create_by(nombre: "Cocina")
antigufecha_nacimientoes = Categoria.find_or_create_by(nombre: "Antiguedades")
santeria = Categoria.find_or_create_by(nombre: "Santeria")
automotores = Categoria.find_or_create_by(nombre: "Automotores")
otros = Categoria.find_or_create_by(nombre: "Otros")

puts "Creo los productos"
Producto.find_or_create_by(nombre: "Guantes de acero", descripcion: "Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa", 
	user_id: 1, cantidad_preguntas: 0, categoria_id: 6, foto:"http://40.media.tumblr.com/6bc78e251e463fb68362d168fcf38bda/tumblr_nbqngpEAks1tlipbuo1_1280.jpg",
	created_at: DateTime.new(2014,2,5), fecha_finalizacion: DateTime.new(2014,12,25), finalizado: false)
Producto.find_or_create_by(nombre: "Llama", descripcion: "Llama adulta oriunda de Tilcara. Es mansita", 
	user_id: 2, cantidad_preguntas: 0, categoria_id: 1, foto: "http://41.media.tumblr.com/6750bde49985d14340294b65cbfac7a2/tumblr_nbsedz4pML1tlipbuo1_1280.jpg",
	created_at: DateTime.new(2014,3,6), fecha_finalizacion: DateTime.new(2014,12,26), finalizado: false)
Producto.find_or_create_by(nombre: "Espejo", descripcion: "Espejo sin marco. Medidas: 0.8m x 1.2m", 
	user_id: 1, cantidad_preguntas: 0, categoria_id: 2, foto: "http://40.media.tumblr.com/ad056adadfeeced7f24f918a843a0f60/tumblr_nbsf4rGZFE1tlipbuo1_1280.jpg",
	created_at: DateTime.new(2014,4,7), fecha_finalizacion: DateTime.new(2014,12,22), finalizado: false)
Producto.find_or_create_by(nombre: "Kriptonita", descripcion: "200 gramos de Kriptonita", 
	user_id: 2, cantidad_preguntas: 0, categoria_id: 4, foto: "http://41.media.tumblr.com/8e08757ed8fd1c3368e29dc127140ef1/tumblr_nbsewqvU231tlipbuo1_1280.jpg",
	created_at: DateTime.new(2014,5,8), fecha_finalizacion: DateTime.new(2014,12,31), finalizado: false)
Producto.find_or_create_by(nombre: "Aceite y Vinagre", descripcion: "200ml de aceite y 300ml de vinagre. No incluye frascos", 
	user_id: 3, cantidad_preguntas: 0, categoria_id: 8, foto: "http://40.media.tumblr.com/f92d39b2c62cf2bc5398797db35ce37d/tumblr_nbsejfmSt21tlipbuo1_400.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,12,30), finalizado: false)
Producto.find_or_create_by(nombre: "Silla", descripcion: "Silla donde se sento Freddie Mercury una vez", 
	user_id: 1, cantidad_preguntas: 0, categoria_id: 7, foto: "http://40.media.tumblr.com/77bb112fcd60be90d4c0cdd36bbb8225/tumblr_nbsev0DXh51tlipbuo1_400.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,11,15), finalizado: true)
Producto.find_or_create_by(nombre: "Papamovil Mercedes", descripcion: "Papa movil (p papamobile) con Juan Pablo II(Giovanni Paolo II). Es un modelo unico del Mercedes Benz Serie ML 430 que utilizo el Papa", 
	user_id: 1, cantidad_preguntas: 0, categoria_id: 10, foto: "https://scontent-b-atl.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/527891_270065266438352_207761564_n.jpg?oh=7cdf09aa9be343a002cd460f00b6c907&oe=54FBBA5D",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,11,15), finalizado: true)
Producto.find_or_create_by(nombre: "200 mg de dignidad", descripcion: "Me quedan estos ultimos 200 ml, se lo doy al que mas lo necesite!", 
	user_id: 6, cantidad_preguntas: 0, categoria_id: 12, foto: "http://3.bp.blogspot.com/-pfsMmV7iXNo/TkzC3Q4hRxI/AAAAAAAAC8Y/zKpU8pNiwak/s1600/simpsons+%25289%2529.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,12,15), finalizado: false)
Producto.find_or_create_by(nombre: "Zapatilla", descripcion: "La subasto porque tengo unas nuevas", 
	user_id: 6, cantidad_preguntas: 0, categoria_id: 5, foto: "https://c2.staticflickr.com/4/3229/3132021230_172bac9095_z.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,9,15), finalizado: false)
Producto.find_or_create_by(nombre: "Ferrari blanca", descripcion: "La queria en negro y me la traen en blanco", 
	user_id: 9, cantidad_preguntas: 0, categoria_id: 11, foto: "http://www.fondos7.net/wallpaper-original/wallpapers/auto-deportivo-blanco-8175.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,11,10), finalizado: false)
Producto.find_or_create_by(nombre: "Nestor Ortigoza", descripcion: "Hola, como estan? Soy Marcelito Tinelli y quiero vender a este jugador que es medio de madera, pero que tiene mucho corazon ( y panza tambien). Asi que si sos dueo o accionista de algun equipo de futbol, por favor oferta tranquilo que si me convences te lo entrego con monio y todo. Aclaracion, soy el mismo posteador que el de la Ferrari, si me compras a Nestitor te regalo otra que me trajeron en azul! ( YO LA QUIERO EN NEGRO). Saludos cordiales muchachos, y que gane el mejor.", 
	user_id: 7, cantidad_preguntas: 0, categoria_id: 11, foto: "http://derabonaalangulo.files.wordpress.com/2011/07/ortigoza.png",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,12,20), finalizado: false)
Producto.find_or_create_by(nombre: "Impresora 3D", descripcion: "Imprime en 3d, creo que imprime bien, nose, nunca la use, chau", 
	user_id: 7, cantidad_preguntas: 0, categoria_id: 3, foto: "http://www.ison21.es/wp-content/uploads/2013/05/printer-e1368779205335.png",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,10,25), finalizado: false, fecha_de_compra: DateTime.new(2014,11,10), comprador_id: 6, monto: 1000)
Producto.find_or_create_by(nombre: "Disenios originales de Bestnid", descripcion: "Estos son los disenios que dieron vida a Bestnid, fueron creados por Cristian siguiendo rigurosos patrones y reglas del disenio web. Ahora me fueron entregados y decidi venderlos porque creo que un objeto tan UNICO debe cotizarse muy alto. Son 8 paginas a todo color tal cual se ven en este sitio. Como veran fueron respetadas a rajatabla por los desarrolladores. Ojala alguien los necesite mas que yo.", 
	user_id: 7, cantidad_preguntas: 0, categoria_id: 9, foto: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpa1/v/t34.0-12/10859710_10205014590825231_473821317_n.jpg?oh=dbefd53e19f7bcff687a7912870035ac&oe=5489FB35&__gda__=1418309540_dc83c0684b1812307433c7bcdded4f4a",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,12,24), finalizado: false)
Producto.find_or_create_by(nombre: "Electrodomesticos", descripcion: "Odio a mi seniora. Todos estos son suyos, oferta y llevate el que quieras, voy a seguir postulando hasta que no me quede con ninguno.", 
	user_id: 9, cantidad_preguntas: 0, categoria_id: 2, foto: "http://p1.pkcdn.com/elementos-electronicos-del-hogar_386228.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,10,15), finalizado: false)
Producto.find_or_create_by(nombre: "fldsmdfr (maquina de comida)", descripcion: "Esto es una revolucion, le metes agua por arriba y por abajo sale comida, Puede programarse para diferentes tipos de comida! especial para dias de lluvia. DIVERTIDISIMO", 
	user_id: 7, cantidad_preguntas: 0, categoria_id: 3, foto: "http://www.spot.ph/files/2014/06/1403758900-Cloudy-With-A-Chance",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,12,15), finalizado: false)
Producto.find_or_create_by(nombre: "Papas Antares", descripcion: "La imagen es a modo ilustrativo.. La porcion trae lo que me quedo de anoche y se entrega en bandeja de plastico", 
	user_id: 9, cantidad_preguntas: 0, categoria_id: 8, foto: "http://s3.amazonaws.com/foodspotting-ec2/reviews/2835155/thumb_600.jpg?1354987339",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,10,15), finalizado: false, fecha_de_compra: DateTime.new(2014,11,10), comprador_id: 6, monto: 1000)
Producto.find_or_create_by(nombre: "Nariz de Pinocho", descripcion: "Ejemplar unico : es la verdadera nariz de Pinocho mide 1.2mts y viene con rosca para sacar y poner. Fue conseguida en Disney en un set de filmacion. Ya no se que hacer con ella..", 
	user_id: 5, cantidad_preguntas: 0, categoria_id: 9, foto: "http://farcosa.es/tienda/3720-thickbox/palo-para-cepillo-buque-madera-115-cms.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,10,15), finalizado: false)
Producto.find_or_create_by(nombre: "Ponzio", descripcion: "Hola soy la mama de Ponzio y ya estoy cansada de fumarmelo aca en casa. En la imagen se aprecia su mejor pase del anio, asistencia al alcanza pelotas. Desde chiquito que sufre problemas intestinales y mas que nada se le enfria el pechito, asi que mucho abrigo. Su deporte preferido es escuchar como la pupular se cansa de dedicarme barbaridades, un amor. Besos", 
	user_id: 8, cantidad_preguntas: 0, categoria_id: 7, foto: "http://www.apurogol.net/wp-content/uploads/2008/11/ponzio-river-plate.jpg",
	created_at: DateTime.new(2014,6,9), fecha_finalizacion: DateTime.new(2014,12,15), finalizado: false)


puts "Agrego una pregunta y respuesta"
Producto.find(2).preguntas.find_or_create_by(pregunta: "Cuanto pesa?", respuesta: "Unos 150 kg ma'o meno'", fecha_respuesta: Date.new(2014,11,4));


puts "Agrego ofertas"
Oferta.find_or_create_by(producto_id: 7, user_id: 2, necesidad: "Juan Pablo fue el mejor papa de la historia para mi y me encantaria tener esta figura para recordarlo siempre",
	 monto: 100)
Oferta.find_or_create_by(producto_id: 7, user_id: 3, necesidad: "No tengo nada que decir, sergio",
	 monto: 100)
Oferta.find_or_create_by(producto_id: 7, user_id: 9, necesidad: "hola soy nicolas, elegime para ver como llega el mail al que gano la subasta",
	 monto: 200)
Oferta.find_or_create_by(producto_id: 9, user_id: 5, necesidad: "soy facu",
	 monto: 90)
Oferta.find_or_create_by(producto_id: 17, user_id: 6, necesidad: "soy cris",
	 monto: 10)
Oferta.find_or_create_by(producto_id: 10, user_id: 1, necesidad: "soy carlos",
	 monto: 1000)
Oferta.find_or_create_by(producto_id: 10, user_id: 2, necesidad: "soy cata",
	 monto: 1000)
Oferta.find_or_create_by(producto_id: 10, user_id: 3, necesidad: "soy sergio",
	 monto: 1000)
Oferta.find_or_create_by(producto_id: 10, user_id: 8, necesidad: "Me gustaria conseguir la ferrari para regalarsela a mi profesor de Ingenieria de Software. Saludos Juan",
	 monto: 1000)
Oferta.find_or_create_by(producto_id: 14, user_id: 5, necesidad: "quiero la tele",
	 monto: 77)
