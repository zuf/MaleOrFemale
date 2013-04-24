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
    name = MaleOrFemale::Detector.new('     гоСтиВаР   ', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
  end

  def test_nil
    assert_raise(ArgumentError) { MaleOrFemale::Detector.new(nil) }
  end

  def test_unknown
    name = MaleOrFemale::Detector.new('Сашкамашка')
    name_should = MaleOrFemale::UNKNOWN
    assert_equal name.gender, name_should
    assert_equal name.format, name_should
  end

  def test_unknown_2
    name = MaleOrFemale::Detector.new('AlexanderShilov', source: :compiled)
    name_should = MaleOrFemale::UNKNOWN
    assert_equal name.gender, name_should
    assert_equal name.format, name_should
  end

  def test_unknown_23
    name = MaleOrFemale::Detector.new('404')
    name_should = MaleOrFemale::UNKNOWN
    assert_equal name.gender, name_should
    assert_equal name.format, name_should
  end
end