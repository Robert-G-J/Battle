
class Player

  attr_reader :name, :hp

  def initialize(name, hp = 60)
    @name = name
    @hp = hp
  end

  def loses_HP
    self.hp = self.hp - 10
  end

  private
  attr_writer :hp

end
