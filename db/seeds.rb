# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
    stat = Statistic.new(
        number_of_win: rand(1..1000),
        number_of_loss: rand(1..1000),
        average_score: rand(1..1000),
        highest_score: rand(1..1000),
        highest_score_match_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
        highest_score_opponent: Faker::Name.first_name

    )
    user = User.new(
        first_name: Faker::Name.first_name,
        second_name: Faker::Name.last_name,
        address: Faker::Address.street_name,
        number: 10.times.map{rand(11)}.join.to_i,
        joined_at: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
    )
    stat.user = user
    stat.save
    user.save
end