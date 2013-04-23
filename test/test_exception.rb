# encoding: UTF-8

require 'test/unit'
require 'male_or_female'

class ExceptionTest < Test::Unit::TestCase
  def test_wrong_source
    assert_raise(ArgumentError) { MaleOrFemale::Detector.new('Александр', source: :db) }
  end
end