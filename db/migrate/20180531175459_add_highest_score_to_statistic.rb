class AddHighestScoreToStatistic < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :highest_score, :integer
  end
end
