require 'rails_helper'

RSpec.describe Question, type: :model do

  it { should have_many :question_orders }
  it { should have_many :surveys }
  it { should have_many :responses }
  it { should validate_presence_of :question_text  }
  it { should validate_uniqueness_of(:question_text).with_message('already defined.')}

end
