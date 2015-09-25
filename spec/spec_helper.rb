# Helpers for tests
require_relative 'support/ship_behaviors'
require_relative 'support/board_behaviors'

# Require ships and ship behaviors
require_relative '../sinkable'
require_relative '../ship.rb'
require_relative '../carrier'
require_relative '../battleship'
require_relative '../cruiser'
require_relative '../submarine'
require_relative '../destroyer'
require_relative '../fleet'

# Require board
require_relative '../space'
require_relative '../untargeted_space'
require_relative '../hit_space'
require_relative '../miss_space'
require_relative '../board'
require_relative '../target_board'

# Require presenters
require_relative '../board_presenter'

# Require coordinates translator
require_relative '../coordinates_translator'

