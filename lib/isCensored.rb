class isCensored
    def self.check(input)
        
        # Create dictionary for swear word replacement
        swear_words = {
            'fuck' => '****',
            'cock' => '****',
            'cunt' => '****',
            'shit' => '****',
            'wanker' => '******',
            'fag' => '***',
            'faggot' => '******',
            'asshole' => '*******',
            'arsehole' => '********',
            'retard' => '******'
        }

        # Get input in lower case to keep consistent
        word = input.downcase

        # Loop through each swear word to check if it matches the input
        swear_words.each do |swear, censored|
            word.gsub!(swear, censored)
        end

        # Sets the word
        puts word

        # Returns the word
        return word

    end
end