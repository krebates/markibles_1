require 'spec_helper'

describe User do

  it { should validate_presence_of :username }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :dob }
  it { should have_many :ratings }
  it { should have_one :seller }

  it 'should be unique' do
    FactoryGirl.create(:user)
    inquiry1 = FactoryGirl.build(:user)
    expect(inquiry1).to_not be_valid

  end
end
