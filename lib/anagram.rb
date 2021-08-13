class Anagram

    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(list)
        res = []
        list.each do |item|
            item_chars = item.chars
            target_chars = @word.chars
            
            # puts item_chars.sort
            # puts target_chars.sort

            if item_chars.sort == target_chars.sort
                res.push(item)
            end
        end
        return res
    end
end