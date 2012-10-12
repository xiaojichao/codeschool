require 'spec_helper'

describe Challenge do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:additional_information) }
  it { should validate_presence_of(:console) }
  it { should validate_presence_of(:task) }
  it { should validate_presence_of(:verification_code) }
end
