require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Last Name/)
    rendered.should match(/Slast Name/)
    rendered.should match(/Names/)
    rendered.should match(/Gender/)
    rendered.should match(/MyText/)
    rendered.should match(/Map Link/)
    rendered.should match(/Phone/)
    rendered.should match(/Father Name/)
    rendered.should match(/Father Work/)
    rendered.should match(/Mother Name/)
    rendered.should match(/Mother Work/)
    rendered.should match(/2/)
    rendered.should match(/Colonia/)
    rendered.should match(/City/)
    rendered.should match(/Zip Code/)
    rendered.should match(/Foto/)
    rendered.should match(/Shoe Size/)
    rendered.should match(/Tshirt Size/)
    rendered.should match(/Email/)
    rendered.should match(/Profession/)
    rendered.should match(/Notes/)
  end
end
