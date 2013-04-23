# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class SourceFormalMaleTest < Test::Unit::TestCase

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

  def test_v
    name = MaleOrFemale::Detector.new('Ворон')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_g
    name = MaleOrFemale::Detector.new('Герасим')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_d
    name = MaleOrFemale::Detector.new('Домислав')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_e
    name = MaleOrFemale::Detector.new('Емельян')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  #def test_eo
  #  name = MaleOrFemale::Detector.new('Ёрш')
  #  name_should = MaleOrFemale::MALE
  #  assert_equal name.gender, name_should
  #  assert_equal name.format, FORMAT_SHOULD
  #end

  def test_zh
    name = MaleOrFemale::Detector.new('Ждислав')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_z
    name = MaleOrFemale::Detector.new('Земислав')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_i
    name = MaleOrFemale::Detector.new('Идан')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_k
    name = MaleOrFemale::Detector.new('Красимил')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_l
    name = MaleOrFemale::Detector.new('Люборост')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_m
    name = MaleOrFemale::Detector.new('Мичура')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end