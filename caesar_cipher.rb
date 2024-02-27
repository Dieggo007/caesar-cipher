def letter?(char)
  char.match?(/[A-Za-z]/)
end

def is_upper?(char)
  char == char.upcase
end

def shift_char(char, shift)
  limits = is_upper?(char) ? {upper: 90, lower: 64} : {upper: 122, lower: 96}
  char.ord + shift <= limits[:upper] 
    ? (char.ord + shift).chr 
    : (char.ord + shift + limits[:lower] - limits[:upper]).chr
end

def caesar_cipher(string, shift)
  string.chars.map{ |char| letter?(char) ? shift_char(char, shift) : char }.join
end

