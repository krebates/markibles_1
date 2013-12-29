require 'spec_helper'

describe Product do
  it {should validate_presence_of :name}
  it {should validate_presence_of :description}
  it {should validate_presence_of :price}
  it {should have_many :ratings}
  it {should belong_to :seller}
  it {should validate_numericality_of :price}
end
