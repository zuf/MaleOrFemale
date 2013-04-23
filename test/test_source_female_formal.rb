# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class SourceFormalFemaleTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::FORMAL

  def test_a
    name = MaleOrFemale::Detector.new('Антонида')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_b
    name = MaleOrFemale::Detector.new('Болеслава')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_v
    name = MaleOrFemale::Detector.new('Веслава')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_g
    name = MaleOrFemale::Detector.new('Груша')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_d
    name = MaleOrFemale::Detector.new('Добромира')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_e
    name = MaleOrFemale::Detector.new('Евлампия')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_zh
    name = MaleOrFemale::Detector.new('Ждислава')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_z
    name = MaleOrFemale::Detector.new('Замятня')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_i
    name = MaleOrFemale::Detector.new('Ирмера')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_k
    name = MaleOrFemale::Detector.new('Кропотка')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end