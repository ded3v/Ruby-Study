require 'rest-client'
require 'json'
require 'fileutils'

class Translator
  def self.translate(text, source_lang, target_lang)
    url = "https://api.mymemory.translated.net/get"
    params = {
      'q' => text,
      'langpair' => "#{source_lang}|#{target_lang}"
    }

    response = RestClient.get(url, params: params)
    translation = JSON.parse(response.body)["responseData"]["translatedText"]
    translation
  end
end

puts "Bem-vindo ao PROJETO_FINAL!"
puts "Digite o texto a ser traduzido:"
original_text = gets.chomp

puts "Digite o idioma do texto (ex: en, pt, es):"
source_lang = gets.chomp

puts "Digite o idioma para tradução (ex: en, pt, es):"
target_lang = gets.chomp

translated_text = Translator.translate(original_text, source_lang, target_lang)

puts "Texto original: #{original_text}"
puts "Texto traduzido: #{translated_text}"

base_path = "/home/ded3v/Desktop/rubyL/Ruby-Study/Ruby_Course_Training/Projeto_Final/Final_Project/traducoes"

# Criar a pasta "traducoes" se ela não existir
FileUtils.mkdir_p(base_path) unless File.directory?(base_path)

# Obter a data e hora atual para o nome do arquivo
timestamp = Time.now.strftime('%d-%m-%Y_%H-%M')
filename = "#{base_path}/#{timestamp}.txt"

# Salvar o resultado da tradução no arquivo
File.open(filename, 'w') do |file|
  file.puts("Texto original: #{original_text}")
  file.puts("Texto traduzido: #{translated_text}")
end

puts "Tradução salva no arquivo: #{filename}"
