# frozen_string_literal: true

module Game
  def score(real_score_team1, real_score_team2, estimated_score_team1, estimated_score_team2)
    real_score_comparison = real_score_team1 <=> real_score_team2
    estimated_score_comparison = estimated_score_team1 <=> estimated_score_team2

    if real_score_team1 < 0 || real_score_team1 > 9 ||
        real_score_team2 < 0 || real_score_team2 > 9 ||
        estimated_score_team1 < 0 || estimated_score_team1 > 9 ||
        estimated_score_team2 < 0 || estimated_score_team2 > 9
      raise ArgumentError, "Unexpected score of the game of team other than 0-9"
    elsif real_score_team1 == estimated_score_team1 && real_score_team2 == estimated_score_team2
      1
    elsif real_score_comparison.positive? && estimated_score_comparison.positive? ||
        real_score_comparison.negative? && estimated_score_comparison.negative? ||
        real_score_comparison.zero? && estimated_score_comparison.zero?
      0
    else
      -1
    end
  end

  module_function :score
end
