class Statistic < ApplicationRecord
    belongs_to :user, dependent: :destroy
end
