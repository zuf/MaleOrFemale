# encoding: UTF-8

require 'male_or_female/version'
require 'unicode_utils'
require 'yaml'

module MaleOrFemale

  COMPILED_DIR = './lib/male_or_female/data_compiled'
  SOURCE_DIR = './lib/male_or_female/data_source'

  MALE, FEMALE, UNISEX = :male, :female, :unisex
  GENDERS = [FEMALE, MALE, UNISEX]
  FORMAL, INFORMAL = :formal, :informal
  FORMATS = [INFORMAL, UNISEX, FORMAL]

  class Detector
    def initialize(name, options = {})
      source = options[:source] || 'source'
      @name = prepare_name(name)
      @data = load_data(@name[0], source.to_sym)
      @result = detect
    end

    def gender
      GENDERS.each do |gender|
        return gender if @result =~ /(#{gender})[_]/i
      end
    end

    def format
      FORMATS.each do |format|
        return format if @result =~ /[_](#{format})/i
      end
    end

    # PRIVATE
    private

    def load_data(letter, source = :source)
      case source
        when :source
          YAML.load_file(File.open("#{SOURCE_DIR}/ru/#{letter.downcase}.yaml"))
        when :compiled
          YAML.load_file(File.open("#{COMPILED_DIR}/ru.yaml"))
        else
          raise ArgumentError.new("Invalid source option: #{source}")
      end
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
        result = sex[0] if sex[1] =~ /(\s|^)(#{@name})(\s|$)/i
      end
      result
    end

    def prepare_name(name)
      name.strip.downcase.capitalize
    end
  end
end
