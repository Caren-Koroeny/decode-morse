def decode_char(char)
    morsecode = {
        '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
        '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
        '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
        '.---.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
        '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
        '--..' => 'Z'
      }
      puts morsecode[char]
    end

    def decode_word(word)
        puts word.split.map {  |char| decode_char(char) }.join
    end
    def decode_fullmessage(message)
        puts message.split('  ').map { |char| decode_word(char) }.join(' ')
      end