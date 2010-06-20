require 'spec_helper'

describe "/washing_stations/edit" do
  before(:each) do
    assigns[:washing_station] = @washing_station = stub_model(WashingStation,
      :new_record? => false,
      :id => 2,
      :name => "WS1",
      :code => "ABC123"
    )
    
    render
  end

  it "renders the washing station form" do
    response.should have_tag("form[action=#{washing_station_path(@washing_station)}][method=post]") do
      with_tag('input#washing_station_name[name=?]', "washing_station[name]")
      with_tag('input#washing_station_code[name=?]', "washing_station[code]")
    end
  end
  
end
