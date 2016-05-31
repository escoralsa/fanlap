require 'spec_helper'

describe "applications/show" do
  before(:each) do
    @application = assign(:application, stub_model(Application,
      :school_name => "School Name",
      :school_year => "School Year",
      :grade => "Grade",
      :score => 1.5,
      :other_scholarship => false,
      :from => "From",
      :amount => 1.5,
      :approved => false,
      :notes => "MyText",
      :student => nil,
      :sponsor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Name/)
    rendered.should match(/School Year/)
    rendered.should match(/Grade/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(/From/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
