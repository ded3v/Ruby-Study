require 'rest-client'
require 'json'

class Translator
  GOOGLE_API_KEY = 'SEU_TOKEN_AQUI'

  def self.translate(text, source_lang, target_lang)
    url = "https://translation.googleapis.com/language/translate/v2"
    params = {
      key: GOOGLE_API_KEY,
      q: text,
      source: source_lang,
      target: target_lang
    }

    response = RestClient.get(url, params: params)
    translation = JSON.parse(response.body)["data"]["translations"].first["translatedText"]
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

# Após a impressão do texto traduzido
timestamp = Time.now.strftime('%Y-%m-%d_%H-%M')
filename = "traducoes/#{timestamp}.txt"

File.open(filename, 'w') do |file|
  file.puts("Texto original: #{original_text}")
  file.puts("Texto traduzido: #{translated_text}")
end

puts "Tradução salva no arquivo: #{filename}"
