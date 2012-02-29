class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.references :especialidade

      t.timestamps
    end
    add_index :medicos, :especialidade_id
  end
end
