require 'pry'
class PigLatinizer

    def piglatinize(word)
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
        letters = word.split("")
        letters.map do |letter| 
            if vowels.include?(letter[0])
                word + way
            else 
                i = 0
                consonants = ""
                until vowels.include?(word[i])
                  consonants += word[i]
                  i += 1
                end
                word.slice(i..-1) + consonants + "ay"
            end 
        end.join (" ") 
    end 
# binding.pry
end 
