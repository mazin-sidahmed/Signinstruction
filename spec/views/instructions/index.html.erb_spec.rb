require 'rails_helper'

RSpec.describe "instructions/index", type: :view do
  before(:each) do
    assign(:instructions, [
      Instruction.create!(
        :word => "Word"
      ),
      Instruction.create!(
        :word => "Word"
      )
    ])
  end

  it "renders a list of instructions" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
  end
end
