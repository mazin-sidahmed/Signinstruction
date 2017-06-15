class Instruction
  include Mongoid::Document
  include Mongoid::Timestamps
  field :word, type: String
  field :sign, type: String
end
