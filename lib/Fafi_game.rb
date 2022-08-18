class Game
  def initialize(try1, try2)
    @try1  = try1
    @try2  = try2
    @code1 = (1..30).to_a.sample(3).join(", ")
    @code2 = (1..10).to_a.sample(3).join(", ")
  end

  def win?
    if @try1 == @code1 || @try2 == @code2
      return true
    end
    return false
  end


  def code1
    return @code1
  end

  def code2
    return @code2
  end

  def try1
    return @try1
  end

  def try2
    return @try2
  end
end
