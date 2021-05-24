require_relative '../lib/game'

RSpec.describe Game do
  describe '#score' do
    it 'raises ArgumentError when score of the game of team other than 0-9' do
      expect { Game.score(-1, 0, 0, 0) }.to raise_error(ArgumentError)
      expect { Game.score(10, 0, 0, 0) }.to raise_error(ArgumentError)
      expect { Game.score(0, -1, 0, 0) }.to raise_error(ArgumentError)
      expect { Game.score(0, 10, 0, 0) }.to raise_error(ArgumentError)
      expect { Game.score(0, 0, -1, 0) }.to raise_error(ArgumentError)
      expect { Game.score(0, 0, 10, 0) }.to raise_error(ArgumentError)
      expect { Game.score(0, 0, 0, -1) }.to raise_error(ArgumentError)
      expect { Game.score(0, 0, 0, 10) }.to raise_error(ArgumentError)
    end

    it 'returns the score' do
      expect(Game.score(0, 1, 0, 1)).to eq(1)
      expect(Game.score(0, 0, 0, 0)).to eq(1)
      expect(Game.score(2, 1, 1, 0)).to eq(0)
      expect(Game.score(1, 2, 0, 1)).to eq(0)
      expect(Game.score(0, 0, 1, 1)).to eq(0)
      expect(Game.score(0, 4, 2, 0)).to eq(-1)
      expect(Game.score(0, 0, 0, 1)).to eq(-1)
    end
  end
end
