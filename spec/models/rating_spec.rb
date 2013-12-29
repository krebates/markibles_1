require 'spec_helper'

describe Rating do
it { should validate_presence_of :overall_rating }
it { should validate_presence_of :flavor }
it { should validate_presence_of :presentation }
it { should validate_presence_of :timeliness_of_delivery }
it { should belong_to(:user) }
it { should belong_to(:seller).dependent(:destroy) }
it { should belong_to(:product).dependent(:destroy)}

# destroy if product deleted
# destroy if seller deleted
end
