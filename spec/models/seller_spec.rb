require 'spec_helper'

describe Seller do

  it {should belong_to :user}
  it {should validate_presence_of :name}

end
