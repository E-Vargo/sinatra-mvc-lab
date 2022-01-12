class PigLatinizer

    def split_text(text)
        text.split(" ")
    end

    def latinize(word)
            if word[0].match(/[aeiouAEIOU]/)
              word + "way"
            else
              vowel_i = word.index(/[aAeEiIoOuU]/)  #attempted to solve several diferent ways looked at solution
              consonants = word.slice(0..vowel_i-1)
              leftover = word.slice(vowel_i..word.length)
              leftover + consonants + "ay"
            end
    end

    def piglatinize(text)
        word_array = split_text(text)
        word_array.collect {|w| latinize(w)}.join(" ")
    end
end