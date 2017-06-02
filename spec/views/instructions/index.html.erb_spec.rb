require 'rails_helper'

RSpec.describe "instructions/index", type: :view do
  before(:each) do
    assign(:instructions, [
      Instruction.create!(
        :word => "Word",
        :sign => "Sign"
      ),
      Instruction.create!(
        :word => "Word",
        :sign => "Sign"
      )
    ])
  end

  it "renders a list of instructions" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
    assert_select "tr>td", :text => "Sign".to_s, :count => 2
  end
end
