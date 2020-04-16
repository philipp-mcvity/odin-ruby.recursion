#!/usr/bin/env ruby
# frozen_string_literal: true

def fibs(num)
  return num.times.map { |i| i } if num < 3

  ary = [0, 1]
  (3..num).each { |i| ary << ary[i - 3] + ary[i - 2] }
  ary
end

def fibs_rec(num, ary = [0, 1])
  return [] if num.zero?
  return ary[0..num - 1] if (1..2).include?(num)

  ary << fibs_rec(num - 1, ary)[num - 2] + ary[num - 3]
end
