require 'spec_helper'

describe "patients/show" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
      :name => "Name",
      :email => "Email",
      :condition => "Condition",
      :phone => 1,
      :deviceId => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Condition/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
