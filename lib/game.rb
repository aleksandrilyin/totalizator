# frozen_string_literal: true

module Game
  def score(*scores)
    real_score_comparison = scores[0] <=> scores[1]
    estimated_score_comparison = scores[2] <=> scores[3]

    if scores.map { |score| score.between?(0, 9) }.include?(false)
      raise ArgumentError, "Unexpected score of the game of team other than 0-9"
    elsif scores[0] == scores[2] && scores[1] == scores[3]
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
