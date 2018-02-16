require 'rails_helper'

RSpec.describe User, type: :model do
  it "can be created" do
    @user = User.create(:name => "morganne", :password => "secret", :password_confirmation => "secret")
    expect(@user).to be_an_instance_of User
  end
  it "must be created with valid password" do
    @user = User.new(:name => "morganne", :password => "pass", :password_confirmation => "word")
    expect(@user.save).to be(false)
  end

  it "search_users properly searches users" do
    rookie = Ranking.create(name: "Rooke", level: 1)
    matt = User.create!(:name => "matt", :password => "123", :password_confirmation => "123", ranking: rookie)
    matthew = User.create!(:name => "matthew", :password => "secret", :password_confirmation => "secret", ranking: rookie)
    morganne = User.create!(:name => "morganne", :password => "password", :password_confirmation => "password", ranking: rookie)
    expect(User.search_users("matt")).to include(matt, matthew)
  end

  it 'returns current level of user' do
    person = Ranking.create(name: 'First', level: 1)
    expect(person.level).to_not eq(2)
  end

  it 'has a name' do
    one = User.new(:name => "josh")
    expect(one.name).to eq("josh")
  end
end
