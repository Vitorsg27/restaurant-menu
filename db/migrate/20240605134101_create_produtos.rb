class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco, precision: 10, scale: 2
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
