class TeamsController < ApplicationController
  
attr_accessor :name, :wins, :losses

  def initialize(name, wins, losses)
    self.name = name
    self.wins = wins.to_i
    self.losses = losses.to_i
  end


end
