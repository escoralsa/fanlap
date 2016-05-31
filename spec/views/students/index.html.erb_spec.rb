require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :st_number => 1,
        :last_name => "Last Name",
        :slast_name => "Slast Name",
        :names => "Names",
        :gender => "Gender",
        :address => "MyText",
        :map_link => "Map Link",
        :phone => "Phone",
        :father_name => "Father Name",
        :father_work => "Father Work",
        :mother_name => "Mother Name",
        :mother_work => "Mother Work",
        :sibling => 2,
        :colonia => "Colonia",
        :city => "City",
        :zip_code => "Zip Code",
        :foto => "Foto",
        :shoe_size => "Shoe Size",
        :tshirt_size => "Tshirt Size",
        :email => "Email",
        :profession => "Profession",
        :notes => "Notes"
      ),
      stub_model(Student,
        :st_number => 1,
        :last_name => "Last Name",
        :slast_name => "Slast Name",
        :names => "Names",
        :gender => "Gender",
        :address => "MyText",
        :map_link => "Map Link",
        :phone => "Phone",
        :father_name => "Father Name",
        :father_work => "Father Work",
        :mother_name => "Mother Name",
        :mother_work => "Mother Work",
        :sibling => 2,
        :colonia => "Colonia",
        :city => "City",
        :zip_code => "Zip Code",
        :foto => "Foto",
        :shoe_size => "Shoe Size",
        :tshirt_size => "Tshirt Size",
        :email => "Email",
        :profession => "Profession",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slast Name".to_s, :count => 2
    assert_select "tr>td", :text => "Names".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Map Link".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Father Name".to_s, :count => 2
    assert_select "tr>td", :text => "Father Work".to_s, :count => 2
    assert_select "tr>td", :text => "Mother Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mother Work".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Colonia".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Foto".to_s, :count => 2
    assert_select "tr>td", :text => "Shoe Size".to_s, :count => 2
    assert_select "tr>td", :text => "Tshirt Size".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
