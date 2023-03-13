class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :tipo_persona
      t.integer :documento
      t.string :fecha_emision_doc
      t.date :fecha_venc_doc
      t.string :nombre
      t.string :correo
      t.integer :telefono_principal
      t.integer :telefono_secundario

      t.timestamps
    end
  end
end
