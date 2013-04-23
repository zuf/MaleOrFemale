# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class MaleInformalTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::INFORMAL

  def test_k
    name = MaleOrFemale::Detector.new('Коля', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_v
    name = MaleOrFemale::Detector.new('Вася', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_d
    name = MaleOrFemale::Detector.new('Дима', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

end