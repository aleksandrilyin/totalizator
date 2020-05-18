require 'game'

describe Game do
  it 'returns the score' do
    expect(Game.score(0, 1, 0, 1)).to eq(1)
    expect(Game.score(2, 1, 1, 0)).to eq(0)
    expect(Game.score(1, 2, 0, 1)).to eq(0)
    expect(Game.score(0, 4, 2, 0)).to eq(-1)
  end
end
