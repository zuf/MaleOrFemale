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

  def test_l
    name = MaleOrFemale::Detector.new('Лилиана')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_m
    name = MaleOrFemale::Detector.new('Милонега')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_n
    name = MaleOrFemale::Detector.new('Негода')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_o
    name = MaleOrFemale::Detector.new('Олимпиада')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_p
    name = MaleOrFemale::Detector.new('Потвора')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_r
    name = MaleOrFemale::Detector.new('Роза')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_s
    name = MaleOrFemale::Detector.new('Сияна')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_t
    name = MaleOrFemale::Detector.new('Тайна')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_u
    name = MaleOrFemale::Detector.new('Улада')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_h
    name = MaleOrFemale::Detector.new('Хорошава')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_c
    name = MaleOrFemale::Detector.new('Цветана')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ch
    name = MaleOrFemale::Detector.new('Цветана')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_sh
    name = MaleOrFemale::Detector.new('Шварнедь')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_sсh
    name = MaleOrFemale::Detector.new('Щедра')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ae
    name = MaleOrFemale::Detector.new('Эмма')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ju
    name = MaleOrFemale::Detector.new('Юлиана')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ya
    name = MaleOrFemale::Detector.new('Ягода')
    name_should = MaleOrFemale::FEMALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end