@morse_code = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
  '-' => 'T', '..-' => 'U', '...-' => 'V',
  '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
  }

def decode_char(morse_char)
  @morse_code[morse_char]
end

def decode_word(word)
  trs_word = ''
  word.split.each do |char|
    trs_word.concat(decode_char(char))
  end
  trs_word
end

def decode(phrase)
  trs_phrase = ''
  phrase.split('   ').each do |word|
    trs_phrase.concat(decode_word(word)).concat(' ')
  end
  trs_phrase
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')