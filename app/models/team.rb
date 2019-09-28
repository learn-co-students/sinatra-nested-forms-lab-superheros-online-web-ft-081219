class Team 
  attr_accessor :team_name, :heroes, :motto
  @@all = []
  def initialize(heroes: ,motto:, team_name:)
    @heroes= heroes
 
    @motto = motto
    @team_name = team_name
    @@all << self
  end
  
  def self.all
    @@all
  end

end