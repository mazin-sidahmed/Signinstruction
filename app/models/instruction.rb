class Instruction
  include Mongoid::Document
  include Mongoid::Timestamps

  field :word, type: String
  field :sign, type: String

  def self.find(words)
    return Instruction.where(:word.in => words)
  end
end
