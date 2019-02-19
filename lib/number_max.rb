require "number_max/version"

module NumberMax
  extend self
  
  # Метод выполняет поиск чисел в текстовом 
  # файле, с помощью регулярного выражения.
  # Метод принимает первым параметром данные 
  # из сканируемого текстового файла.
  # Вторым параметром метода является число,
  # указывающее, какое колличество найденых 
  # чисел необходимо отобразить (вернуть).
  def find_numbers(file:, max:)
    numbers = []
    file.each_line do |line|
      line.scan(/\d{1,1000}/).each{ |n| numbers << n.to_i }
    end
    numbers.uniq.sort.reverse[0...max]
  end

end
