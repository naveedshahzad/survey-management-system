require 'rails_helper'

RSpec.describe Survey, type: :model do
  it { should have_many :questions }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
