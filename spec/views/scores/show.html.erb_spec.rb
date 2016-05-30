require 'spec_helper'

describe "scores/show" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :month => "Month",
      :year => 1,
      :score => 1.5,
      :student => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Month/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(//)
  end
end
