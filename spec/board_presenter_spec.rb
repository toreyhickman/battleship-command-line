require_relative 'spec_helper'

describe BoardPresenter do
  let(:space) { double('space', { identifier: "-" })}
  let(:board) { double('board', { rows: Array.new(10) { Array.new(10) { space }}}) }
  let(:presenter) { BoardPresenter.new(board) }

  it 'formats a board for display on the command line' do
    board_as_string = <<-BOARD.gsub(/^\s*/, '')
    ---|---|---|---|---|---|---|---|---|---|---|
    *  | A | B | C | D | E | F | G | H | I | J |
    ---|---|---|---|---|---|---|---|---|---|---|
    1  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    2  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    3  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    4  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    5  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    6  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    7  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    8  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    9  | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    10 | - | - | - | - | - | - | - | - | - | - |
    ---|---|---|---|---|---|---|---|---|---|---|
    BOARD


    expect(presenter.render_board).to eq board_as_string
  end
end
