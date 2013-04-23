# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class CompiledFormalMaleTest < Test::Unit::TestCase

  FORMAT_SHOULD = MaleOrFemale::FORMAL

  def test_a
    name = MaleOrFemale::Detector.new('Артемий', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_b
    name = MaleOrFemale::Detector.new('Боримир', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_v
    name = MaleOrFemale::Detector.new('Вукомил', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_g
    name = MaleOrFemale::Detector.new('Гладила', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_d
    name = MaleOrFemale::Detector.new('Дюжен', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_e
    name = MaleOrFemale::Detector.new('Есеня', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_zh
    name = MaleOrFemale::Detector.new('Живород', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_z
    name = MaleOrFemale::Detector.new('Зосима', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_i
    name = MaleOrFemale::Detector.new('Избыгнев', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_k
    name = MaleOrFemale::Detector.new('Кислоквас', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_l
    name = MaleOrFemale::Detector.new('Люборост', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_m
    name = MaleOrFemale::Detector.new('Мичура', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_n
    name = MaleOrFemale::Detector.new('Нездиня', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_o
    name = MaleOrFemale::Detector.new('Оскол', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_p
    name = MaleOrFemale::Detector.new('Простибор', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_r
    name = MaleOrFemale::Detector.new('Руслан', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_s
    name = MaleOrFemale::Detector.new('Симон', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_t
    name = MaleOrFemale::Detector.new('Таислав', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_u
    name = MaleOrFemale::Detector.new('Устин', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_h
    name = MaleOrFemale::Detector.new('Хоц', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_c
    name = MaleOrFemale::Detector.new('Цукан', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ch
    name = MaleOrFemale::Detector.new('Чух', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_sh
    name = MaleOrFemale::Detector.new('Шестак', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_sсh
    name = MaleOrFemale::Detector.new('Щило', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ae
    name = MaleOrFemale::Detector.new('Эдуард', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ju
    name = MaleOrFemale::Detector.new('Юрас', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end

  def test_ya
    name = MaleOrFemale::Detector.new('Явор', source: :compiled)
    name_should = MaleOrFemale::MALE
    assert_equal name.gender, name_should
    assert_equal name.format, FORMAT_SHOULD
  end
end