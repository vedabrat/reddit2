require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  context "Associations" do
  	it { is_expected.to belong_to(:topic) }
  end
end
