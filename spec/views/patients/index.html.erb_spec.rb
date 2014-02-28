require 'spec_helper'

describe "patients/index" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient,
        :name => "Name",
        :email => "Email",
        :condition => "Condition",
        :phone => 1,
        :deviceId => 2
      ),
      stub_model(Patient,
        :name => "Name",
        :email => "Email",
        :condition => "Condition",
        :phone => 1,
        :deviceId => 2
      )
    ])
  end

  it "renders a list of patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
