class PigLatinizer

   def piglatinize(input)
    if input.split(" ").length == 1
        pigword(input)
    else
        pigsentence(input)
    end
   end

   def pigword(input)
    if !consonant?(input[0])
        input = input + "w"
    elsif consonant?(input[0]) && consonant?(input[1]) && consonant?(input[2])
        input = input.slice(3..-1) + input.slice(0,3)
    elsif consonant?(input[0]) && consonant?(input[1])
        input = input.slice(2..-1) + input.slice(0,2)
    else
        input = input.slice(1..-1) + input.slice(0)
    end
    input << "ay"
   end

   def pigsentence(input)
    input.split.map { |word| pigword(word) }.join(" ")
   end

   def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end
end