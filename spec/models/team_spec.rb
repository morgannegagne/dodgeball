require 'rails_helper'

RSpec.describe Team, type: :model do
  it "can be created" do
    @team = Team.create(:name => "Wombats")
    expect(@team).to be_an_instance_of Team
  end

  it "has a name" do
    team = Team.new(:name => "Melonheads")
    expect(team.name).to eq("Melonheads")
  end

end
