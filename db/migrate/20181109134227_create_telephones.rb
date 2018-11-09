class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.references :friend, null: false
      t.string :number, null: false
      t.boolean :cellphone, null: false, default: false

      t.timestamps null: false
    end
  end
end
