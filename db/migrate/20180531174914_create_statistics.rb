class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      t.integer :number_of_win
      t.integer :number_of_loss
      t.integer :average_score
      t.integer :user_id

      t.timestamps
    end
  end
end
