class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|

      t.timestamps null: false
    end
  end
end
