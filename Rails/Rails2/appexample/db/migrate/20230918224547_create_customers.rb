class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :string
      t.string :email
      t.string :string
      t.string :birthday
      t.string :date
      t.text :obs

      t.timestamps
    end
  end
end
