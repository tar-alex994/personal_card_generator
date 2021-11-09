data = []
data << get_name << get_descreption << get_phone << get_email

puts "Вы должны ввести данные для заполнения визитной карточки."

begin
  puts "Введите фамилию, имя и отчество:"

  name = STDIN.gets.chomp
end until name =~ /\A(?=\A.{,100}\z) *[A-ZА-ЯЁ]+ +[A-ZА-ЯЁ]+ +[A-ZА-ЯЁ]+ *\z/i
# regexp не позволяет строке быть длиннее 100 символов и при этом позволяет
# вводить лишние пробелы

name = name.scan(/[A-ZА-ЯЁ]+/i).map(&:capitalize).join(' ')
# строка очищается от лишних пробелов, и форматируется регистр

