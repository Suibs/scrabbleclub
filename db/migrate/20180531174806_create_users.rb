class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.integer :number
      t.string :address
      t.date :joined_at
      t.integer :statistic_id

      t.timestamps
    end
  end
end
