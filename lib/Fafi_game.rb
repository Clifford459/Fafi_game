class Game
  def initialize(try1, try2)
    @try1  = try1.to_i
    @try2  = try2.to_i
    @code1 = (1..30).to_a.sample(3)
    @code2 = (1..10).to_a.sample(3)
  end

  #def valid_input1?
  #  if @try1 > 30 || @try1 == 0
  #    return false
  #  end
  #  true
  #end

  def valid_input1?
    if @try1 <= 30 && @try1 != 0
      return true
    end
    false
  end

  def valid_input2?
    if @try2 <= 10 && @try2 != 0
      return true
    end
    false
  end

  def win_round_1?
    @code1.map do |n|
      if @try1 == n
        return true
      end
    end
    false
  end

  def win_round_2?
    @code2.map do |n|
      if @try2 == n
        return true
      end
    end
    false
  end

  def code1
    return @code1.join(", ")
  end

  def code2
    return @code2.join(", ")
  end

  def try1
    return @try1
  end

  def try2
    return @try2
  end
end
