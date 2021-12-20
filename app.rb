# frozen_string_literal: true

require_relative "lib/game"

real_score_team1 = rand(10)
real_score_team2 = rand(10)

print "Enter the estimated score of the game of team 1 (0-9): "
estimated_score_team1 = gets.to_i

print "Enter the estimated score of the game of team 2 (0-9): "
estimated_score_team2 = gets.to_i

puts "\nThe real score of the game: #{real_score_team1}:#{real_score_team2}"
puts "The estimated score of the game: #{estimated_score_team1}:#{estimated_score_team2}"

begin
  game = Game.score(real_score_team1, real_score_team2, estimated_score_team1, estimated_score_team2)
rescue ArgumentError => e
  puts "\n#{e.message}"
  exit(1)
end

puts "\nScore: #{game}"
