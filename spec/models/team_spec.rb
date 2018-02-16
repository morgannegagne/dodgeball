require 'rails_helper'

RSpec.describe Team, type: :model do

  let(:league) {
    League.create(:name => "Northeast Dodgeball League")
  }
  let (:user){
    User.create(:name => "Morganne", :password => "lol", :password_confirmation => "lol")
  }
  let (:user2){
    User.create(:name => "Josh", :password => "ha", :password_confirmation => "ha")
  }
  let(:team) {
    Team.create(:name => "Wombats", :league => league, :user => user)
  }
  let(:team2) {
    Team.create(:name => "Melonheads", :league => league, :user => user2)
  }

  it "can be created" do
    expect(team).to be_an_instance_of Team
  end

  it "has a name" do
    expect(team.name).to eq("Wombats")
  end

  it "belongs to a league" do
    expect(team.league).to be(league)
  end

  it "belongs to a user" do
    expect(team.user).to be(user)
  end

  it "has a method matches that stores all of a team's matches" do
    Match.create(home_team_id: team.id, away_team_id: team2.id)
    Match.create(home_team_id: team2.id, away_team_id: team.id)
    Match.create(home_team_id: team2.id, away_team_id: team.id)
    expect(team.matches.count).to eq(3)
  end

  it 'has wins that can be incremented' do
  check = Team.create(name: 'The Fighters', wins: 0)
  expect(check.wins + 1).to eq(1)
end

  it 'has losses that can be incremented' do
    check = Team.create(name: 'The Fighters', losses: 0)
    expect(check.losses + 1).to eq(1)
  end
end
