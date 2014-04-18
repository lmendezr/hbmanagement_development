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

ActiveRecord::Schema.define(version: 20140418111305) do

  create_table "areas", force: true do |t|
    t.string   "nombre"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "areas", ["proyecto_id"], name: "index_areas_on_proyecto_id", using: :btree

  create_table "componentes", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "seccione_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "componentes", ["seccione_id"], name: "index_componentes_on_seccione_id", using: :btree

  create_table "proyectos", force: true do |t|
    t.string   "nombre",         limit: 45
    t.string   "nombre_gerente", limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secciones", force: true do |t|
    t.string   "nombre"
    t.integer  "porcentaje_componente"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "valor_obtenido"
  end

  add_index "secciones", ["area_id"], name: "index_secciones_on_area_id", using: :btree

  create_table "tareas", force: true do |t|
    t.string   "nombre"
    t.datetime "fecha_de_inicio"
    t.datetime "fecha_de_continuidad"
    t.boolean  "duracion_selec"
    t.integer  "duracion_dias"
    t.boolean  "finalizada"
    t.boolean  "expiracion_selec"
    t.integer  "expiracion_dias"
    t.boolean  "expirada"
    t.integer  "componente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tareas", ["componente_id"], name: "index_tareas_on_componente_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
