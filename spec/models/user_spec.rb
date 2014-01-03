require 'spec_helper'

describe User do

  # it { should validate_uniqueness_of :username }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should have_many :ratings }
  it { should have_one :seller }

  it { should allow_value('words@info.com').for(:email) }
  it { should_not allow_value('dljaklf@lakjfkla').for(:email)}


  it 'has a matching password confirmation for the password' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'anotherpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end

  # context "uniqueness" do
  #   # before :each
  #   it { should validate_uniqueness_of :username }
  # end
end
