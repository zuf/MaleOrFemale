# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class FemaleInformalTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::INFORMAL

  def test_m
    name = MaleOrFemale::Detector.new('Маша', source: :compiled)
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_l
    name = MaleOrFemale::Detector.new('Люба', source: :compiled)
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_z
    name = MaleOrFemale::Detector.new('Зина', source: :compiled)
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end