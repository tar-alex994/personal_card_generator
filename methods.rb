def get_name
  begin
    puts "Введите фамилию, имя и отчество:"

    name = STDIN.gets.chomp
  end until name =~ /\A(?=\A.{,100}\z) *[A-ZА-ЯЁ]+ +[A-ZА-ЯЁ]+ +[A-ZА-ЯЁ]+ *\z/i
  # regexp не позволяет строке быть длиннее 100 символов и при этом позволяет
  # вводить лишние пробелы

  name = name.scan(/[A-ZА-ЯЁ]+/i).map(&:capitalize).join(' ')
  # строка очищается от лишних пробелов, и форматируется регистр
end


def get_descreption
  begin
    puts "Опишите деятельность человека(не более 60 символов):"

    descreption = STDIN.gets.chomp
  end while descreption.size > 60 && descreption =~ /<.+>/
  # regexp проверяет наличие вредоносного кода в описании
  
  descreption.strip!
  descreption[0] = descreption[0].upcase
  # описание всегда будет начинаться с большой буквы и не будет содержать
  # пробелов в начале и в конце строки

  descreption
end


def get_phone
  begin
    puts "Введите номер телефона(только цифры):"
    print "+7"

    phone = STDIN.gets.chomp
  end until phone =~ /\A\d{10}\z/

  "Телефон: +7 #{phone[0,3]} #{phone[3,3]}-#{phone[6,2]}-#{phone[8,2]}"
end