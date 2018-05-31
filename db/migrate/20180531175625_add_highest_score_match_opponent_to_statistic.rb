class AddHighestScoreMatchOpponentToStatistic < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :highest_score_opponent, :string
  end
end
