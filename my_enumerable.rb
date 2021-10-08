# frozen_string_literal: true

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
    chosen = []
    each { |num| chosen << num if yield num }
  end
end
