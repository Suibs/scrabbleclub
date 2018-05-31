class User < ApplicationRecord
    has_one :statistic
    after_create :create_statistic
    private
    def create_statistic
        if (self.statistic.nil?)
            stat = Statistic.new(
            number_of_win: 0,
            number_of_loss: 0,
            average_score: 0,
            highest_score: 0,
            highest_score_match_date: "N/",
            highest_score_opponent: "N/A"
            )
            stat.user = self
            stat.save
        end
    end
end
