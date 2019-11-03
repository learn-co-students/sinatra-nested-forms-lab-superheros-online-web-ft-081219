class Hero 
  attr_reader :name, :power, :bio
  
  HERO = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    
    HERO << self
  end 
  
  def self.all 
    HERO
  end
end 