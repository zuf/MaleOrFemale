# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class ExceptionTest < Test::Unit::TestCase
  def test_wrong_source
    assert_raise(ArgumentError) { MaleOrFemale::Detector.new('Александр', source: :db) }
  end

  def test_capital
    name = MaleOrFemale::Detector.new('ГОСТИВАР', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
  end

  def test_whitespaces
    name = MaleOrFemale::Detector.new('     ГоСтиВаР   ', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
  end
end