class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.date :birthday
      t.text :obs

      t.timestamps #cria na tabela o registro de criações e atualizações
    end
  end
end
