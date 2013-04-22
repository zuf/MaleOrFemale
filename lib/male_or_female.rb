# encoding: UTF-8

require 'male_or_female/version'
require 'unicode_utils'
require 'yaml'

module MaleOrFemale

  SOURCE_DIR = './lib/male_or_female/data_source'

  MALE, FEMALE, UNISEX = :male, :female, :unisex
  GENDERS = [MALE, FEMALE, UNISEX]

  FORMAL, INFORMAL = :formal, :informal
  FORMATS = [FORMAL, INFORMAL, UNISEX]

  class Detector
    def initialize(name)
      @name = name
      @data ||= load_data(@name[0])
      @result = detect
    end

    def gender
      GENDERS.each do |gender|
        return gender if @result =~ /(#{gender})/i
      end
    end

    def format
      FORMATS.each do |format|
        return format if @result =~ /(#{format})/i
      end
    end

    # >>>>>>>>>>> PRIVATE <<<<<<<<<<
    #
    private

    def load_data(letter)
      YAML.load_file( File.expand_path("#{SOURCE_DIR}/ru/#{letter.downcase}.yaml") )
    end

    # Проверет имя (возьмет первую букву от имени, проверит значение в
    # в хеше @data[:первая_буква]).
    #
    # Вернет: 'male_formal', 'female_formal', 'unisex' etc.
    def detect
      result = []
      # ["male_formal", "Август Авдей Аверкий ... "]
      @data[@name[0]].each do |sex|
        next if sex[1].nil?
        result = sex[0] if sex[1].include? @name
      end
      result
    end
  end
end
