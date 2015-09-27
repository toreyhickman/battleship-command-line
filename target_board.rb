class TargetBoard < Board

  def mark_hit_at(index)
    spaces[index] = HitSpace.new
  end

  def mark_miss_at(index)
    spaces[index] = MissSpace.new
  end

  private
  def self.default_space
    UntargetedSpace
  end
end
