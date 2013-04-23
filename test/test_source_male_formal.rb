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

  def test_n
    name = MaleOrFemale::Detector.new('Немат')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_o
    name = MaleOrFemale::Detector.new('Оскол')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_p
    name = MaleOrFemale::Detector.new('Простибор')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_r
    name = MaleOrFemale::Detector.new('Репех')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_s
    name = MaleOrFemale::Detector.new('Садко')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_t
    name = MaleOrFemale::Detector.new('Тугомир')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_u
    name = MaleOrFemale::Detector.new('Управка')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_h
    name = MaleOrFemale::Detector.new('Хоц')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_c
    name = MaleOrFemale::Detector.new('Целибор')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ch
    name = MaleOrFemale::Detector.new('Чтирад')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_sh
    name = MaleOrFemale::Detector.new('Шемяка')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_sсh
    name = MaleOrFemale::Detector.new('Щедрик')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ae
    name = MaleOrFemale::Detector.new('Эммануил')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ju
    name = MaleOrFemale::Detector.new('Ювеналий')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ya
    name = MaleOrFemale::Detector.new('Явдята')
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end