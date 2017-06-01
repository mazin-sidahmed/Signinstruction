require 'rails_helper'

RSpec.describe "instructions/edit", type: :view do
  before(:each) do
    @instruction = assign(:instruction, Instruction.create!(
      :word => "MyString"
    ))
  end

  it "renders the edit instruction form" do
    render

    assert_select "form[action=?][method=?]", instruction_path(@instruction), "post" do

      assert_select "input#instruction_word[name=?]", "instruction[word]"
    end
  end
end
