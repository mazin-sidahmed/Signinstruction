require 'rails_helper'

RSpec.describe "instructions/show", type: :view do
  before(:each) do
    @instruction = assign(:instruction, Instruction.create!(
      :word => "Word",
      :sign => "Sign"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Word/)
    expect(rendered).to match(/Sign/)
  end
end
