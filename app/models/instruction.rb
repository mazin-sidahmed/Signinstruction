class Instruction
  include Mongoid::Document
  include Mongoid::Timestamps

  field :word, type: String
  field :sign, type: String

  def self.search_for(words)
    signs = []
    instructions = Instruction.where(:word.in => words).to_a
    words.each do |word|
      instruction = instructions.find { |instruction| instruction.word == word }
      instruction ? signs.push(instruction.sign) : signs.concat(word.split(''))
    end
    return signs
  end
end
