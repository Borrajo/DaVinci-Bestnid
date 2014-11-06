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

ActiveRecord::Schema.define(version: 20141106124735) do

  create_table "oferta", force: true do |t|
    t.integer  "id_producto"
    t.integer  "id_usuario"
    t.string   "necesidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pregunta", force: true do |t|
    t.integer  "id_preguntador"
    t.integer  "id_producto"
    t.string   "pregunta"
    t.string   "respuesta"
    t.datetime "fecha_respuesta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "id_owner"
    t.datetime "fecha_finalizacion"
    t.integer  "cantidad_preguntas"
    t.integer  "id_comprador"
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.string   "telefono"
    t.string   "clave"
    t.datetime "fecha_nacimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto"
  end

end
