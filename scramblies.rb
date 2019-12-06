require "test/unit/assertions"
include Test::Unit::Assertions

def scramble(s1,s2)
  s1_chars = "abcdefghijklmnopqrstuvwxyz".chars.map { |c| s1.count(c) }
  s2_chars = "abcdefghijklmnopqrstuvwxyz".chars.map { |c| s2.count(c) }
  s1_chars.zip(s2_chars).inject(true) { | check, (a, b)| check && (a >= b) }
end

assert_equal(scramble('rkqodlw','world'),true)
assert_equal(scramble('cedewaraaossoqqyt','codewars'),true)
assert_equal(scramble('katas','steak'),false)
assert_equal(scramble('scriptjava','javascript'),true)
assert_equal(scramble('scriptingjava','javascript'),true)
