# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class FormalTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::FORMAL

  def test_a
    name = MaleOrFemale::Detector.new('Александр')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_b
    name = MaleOrFemale::Detector.new('Боговед')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_a_compiled
    name = MaleOrFemale::Detector.new('Артемий', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_b_compiled
    name = MaleOrFemale::Detector.new('Боримир', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end