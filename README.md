![MaleOrFemale](https://raw.github.com/shlima/MaleOrFemale/master/doc/logo.png)

_MaleOrFemale_ - gem для определения пола человека (male, female, unisex) по его имени. Гем также определяет тип имени (официальное или неформальное).

Демонстрация работы: http://typograf.herokuapp.com/gender

**На данный момент гем определяет только русскоязычные имена**

## Использование

    require 'male_or_female'
    name = MaleOrFemale::Detector.new('Дима')
    name.gender # => :male
    name.format # => :informal
    
## Параметры

Гем может принимать параметр *source* при создании экземпляра класса. Он указывает на источник данных (один скомпилированный файл или множество файлов по букве алфавита).

    MaleOrFemale::Detector.new('Саша', source: :compiled)
    
    MaleOrFemale::Detector.new('Олег', source: :source)
    
Режим 'source' включен по-умолчанию. В данном режиме данные берутся из файлов по первой букве имени. Данный режим выгодно использовать при небольшом количестве запросов. 

## Installation

Add this line to your application's Gemfile:

    gem 'male_or_female'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install male_or_female

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
