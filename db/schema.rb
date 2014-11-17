# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141117201939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oferta", force: true do |t|
    t.integer  "producto_id"
    t.integer  "usuario_id"
    t.string   "necesidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pregunta", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "producto_id"
    t.string   "pregunta"
    t.string   "respuesta"
    t.datetime "fecha_respuesta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "usuario_id"
    t.datetime "fecha_finalizacion"
    t.integer  "cantidad_preguntas"
    t.integer  "comprador_id"
    t.string   "foto"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.string   "telefono"
    t.string   "clave"
    t.string   "foto"
    t.integer  "edad"
    t.string   "domicilio"
    t.string   "numero_tarjeta"
    t.string   "titular_tarjeta"
    t.string   "vencimiento_tarjeta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
