class Instruction
  include Mongoid::Document
  field :word, type: String
  field :sign, type: String
end
