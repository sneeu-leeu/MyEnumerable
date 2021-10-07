module Enumerables
  def all?
    each { |num| return false unless yield num }
    true
  end

end
