require 'pry'
class PigLatinizer


  def piglatinize(word)
    vowels = %w{a e i o u}
      if vowels.include?(word[0].downcase)
         word+"way"
       elsif vowels.include?(word[1].downcase)
         word[1..-1]+word[0]+"ay"
         elsif vowels.include?(word[2].downcase)
            word[2..-1] + word[0..1] + "ay"
             elsif vowels.include?(word[3].downcase)
                word[3..-1] + word[0..2] + "ay"
              end
  end


  def to_pig_latin(sentence)
    translated = sentence.split(" ").collect{|word| piglatinize(word)}
    translated.join(" ")
  end
#if consonatnt put first letter to last and then add "ay"
#for vowel, add way to end of word-->
end
