# encoding: UTF-8

require 'bundler/gem_tasks'
require 'yaml'
require 'unicode_utils'
require 'colorize'

SOURCE_DIR = './lib/male_or_female/data_source'
COMPILED_DIR = './lib/male_or_female/data_compiled'

COPYRIGHT = \
<<COPY
# Copyright (c) #{Time.now.year} «Shilov Alexander».
# Licence: MIT License.

# |-------------------------------------|
# | DO NOT MODIFY THIS FILE!            |
# |=====================================|
# | This file was created automatically |
# | by running a rake task.             |
# |                                     |
# | If you wish to modify data, please  |
# | fork the gem, make changes in a     |
# | data_source directory and make a    |
# | pull request. Thanks.               |
# |-------------------------------------|

# File build at: #{Time.now}
COPY

# Собирет один текстовый файл с данными об именах.
# Запускать перед публикацией гема.
#
# Структура каталога data_source:
#   -data_source
#     -ru (language)
#       -а.yaml (буквы алфавита с которого начинается имя)
#       -б.yaml

namespace :data do
  desc 'Build data dictionaries into the one file'
  task :build do

    # Находим все поддиректории с языками
    # В этой переменной образуется хеш следующего вида:
    # "ru"=>["./lib/male_or_female/data_source/ru/a.yaml", ".../б.yaml"]
    language_folders = {}

    Dir.foreach(SOURCE_DIR) do |lang_folder|
      next if lang_folder == '.' || lang_folder == '..'
      language_folders[lang_folder] = []
      Dir["#{SOURCE_DIR}/#{lang_folder}/*.yaml"].each { |file| language_folders[lang_folder] << file }
      puts "Language '#{lang_folder}' was detected"
    end

    language_folders.each_key do |lang|
      data_file = "#{COMPILED_DIR}/#{lang}.yaml"
      puts "Compiling '#{data_file}'..."

      # Если в папке уже есть скомпилированный файл,
      # удалить его, создать пустой и записать копирайт.
      FileUtils.rm(data_file) if File.exist?(data_file)
      File.open(data_file, 'w+') do |f|
        f.write COPYRIGHT

        # ./lib/male_or_female/data_source/ru/a.yaml
        language_folders[lang].each do |char_file|
          source = YAML.load_file( File.expand_path(char_file) )

          # Extract the letter from the file name
          file_name = File.basename(char_file)
          letter = UnicodeUtils.simple_upcase(file_name[0])

          # Check if the source yaml file has a correct markup
          if source[letter].nil? || source[letter]['male_formal'].nil? || source[letter]['female_formal'].nil?
            puts "!!! Wrong data format at the #{char_file} !!!".red
            break
          end

          f.write source.to_yaml
          puts "#{file_name} was successfully compiled".green
        end
      end
    end
  end
end