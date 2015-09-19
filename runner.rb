# Require ships and ship behavior
require_relative 'sinkable'
require_relative 'ship'
require_relative 'carrier'
require_relative 'battleship'
require_relative 'cruiser'
require_relative 'submarine'
require_relative 'destroyer'
require_relative 'fleet'

# Require board
require_relative 'untargeted_space'
require_relative 'hit_space'
require_relative 'miss_space'
require_relative 'board'

# Require presenters
require_relative 'board_presenter'


board = Board.create
presenter = BoardPresenter.new(board)

puts presenter.render_board
