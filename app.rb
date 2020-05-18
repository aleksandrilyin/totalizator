require_relative 'lib/game'

real_score_team1 = rand(10)
real_score_team2 = rand(10)

print 'Enter the estimated score of the game of team 1: '
estimated_score_team1 = gets.strip.to_i

print 'Enter the estimated score of the game of team 2: '
estimated_score_team2 = gets.strip.to_i

puts "The real score of the game: #{real_score_team1} #{real_score_team2}"

game = Game.score(real_score_team1, real_score_team2, estimated_score_team1, estimated_score_team2)
puts game