class Instruction
  include Mongoid::Document
  include Mongoid::Timestamps

  field :word, type: String
  field :sign, type: String

  def self.find(words)
    instructions = Instruction.where(:word.in => words)
    signs = []

    words.each do |word|
      instructions.each do |instruction|
        if word == instruction.word
          signs.push(instruction.sign)
        end
      end
    end

    return signs
  end
end
