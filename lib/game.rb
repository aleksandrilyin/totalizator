module Game
  def score(real_score_team1, real_score_team2, estimated_score_team1, estimated_score_team2)
    if real_score_team1 == estimated_score_team1 &&
    real_score_team2 == estimated_score_team2
      1
    elsif real_score_team1 >= real_score_team2 &&
    estimated_score_team1 >= estimated_score_team2 ||
    real_score_team1 <= real_score_team2 &&
    estimated_score_team1 <= estimated_score_team2
      0
    else
      -1
    end
  end

  module_function :score
end
