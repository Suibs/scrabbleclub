class AddHighestScoreMatchDateToStatistic < ActiveRecord::Migration[5.2]
  def change
    add_column :statistics, :highest_score_match_date, :date
  end
end
