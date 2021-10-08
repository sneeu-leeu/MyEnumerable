module Enumerables
  def all?
    each { |num| return false unless yield num }
    true
  end

  def any?
    each { |num| return true if yield num }
    false
  end

  def filter
    filtered = []
    each { |num| filtered << num if yield num }
    filtered
  end
end
