require 'spec_helper'

describe "applications/index" do
  before(:each) do
    assign(:applications, [
      stub_model(Application,
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
      ),
      stub_model(Application,
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
      )
    ])
  end

  it "renders a list of applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
    assert_select "tr>td", :text => "School Year".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
