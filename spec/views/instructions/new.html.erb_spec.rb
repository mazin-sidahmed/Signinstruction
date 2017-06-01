require 'rails_helper'

RSpec.describe "instructions/new", type: :view do
  before(:each) do
    assign(:instruction, Instruction.new(
      :word => "MyString"
    ))
  end

  it "renders new instruction form" do
    render

    assert_select "form[action=?][method=?]", instructions_path, "post" do

      assert_select "input#instruction_word[name=?]", "instruction[word]"
    end
  end
end
