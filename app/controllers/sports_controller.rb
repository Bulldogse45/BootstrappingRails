class SportsController < ApplicationController

  attr_accessor :team_info

  def create_teams
    self.team_info = []
    @afc_south = [
      {name:"Colts", wins: 3, losses:4},
      {name:"Texans", wins:2, losses:5},
      {name:"Titans", wins:1, losses:5},
      {name:"Jaguars", wins:2, losses:5}
    ]
    @afc_south.sort_by!{|team| team[:wins]}.reverse!
    @afc_south.each do |team|
      self.team_info << TeamsController.new(team[:name], team[:wins], team[:losses])
    end
  end

  def football
    create_teams
  end

  def page
    create_teams
    @team = team_info.select{|team| team.name == params['team']}
  end
end
