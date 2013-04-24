# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class UnisexInformalTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::INFORMAL

  def test_s
    name = MaleOrFemale::Detector.new('саша', source: :compiled)
    name_should = MaleOrFemale::UNISEX
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_zh
    name = MaleOrFemale::Detector.new('женя', source: :compiled)
    name_should = MaleOrFemale::UNISEX
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end