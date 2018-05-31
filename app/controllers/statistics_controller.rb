class StatisticsController < ApplicationController
    before_action :set_stat, only: [:index]
    def index
    end
    private
  
    def set_stat
        @top10 = Statistic.where("(number_of_win + number_of_loss) > ?", 10).order('number_of_win DESC').limit(10)
    end

end
  