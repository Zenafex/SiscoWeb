# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_12_222754) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "usuarios", force: :cascade do |t|
    t.string "tipo_persona"
    t.integer "documento"
    t.string "fecha_emision_doc"
    t.date "fecha_venc_doc"
    t.string "nombre"
    t.string "correo"
    t.integer "telefono_principal"
    t.integer "telefono_secundario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
