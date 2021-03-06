# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class UnisexFormalTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::FORMAL

  def test_a
    name = MaleOrFemale::Detector.new('Ива', source: :compiled)
    name_should = MaleOrFemale::UNISEX
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end