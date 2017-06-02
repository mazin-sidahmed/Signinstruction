require 'rails_helper'

RSpec.describe "instructions/new", type: :view do
  before(:each) do
    assign(:instruction, Instruction.new(
      :word => "MyString",
      :sign => "MyString"
    ))
  end

  it "renders new instruction form" do
    render

    assert_select "form[action=?][method=?]", instructions_path, "post" do

      assert_select "input#instruction_word[name=?]", "instruction[word]"

      assert_select "input#instruction_sign[name=?]", "instruction[sign]"
    end
  end
end
