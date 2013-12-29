require 'spec_helper'

describe User do

  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :dob }
  it { should belong_to :rating }
  it { should belong_to :seller }
end
