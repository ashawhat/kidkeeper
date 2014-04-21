require 'spec_helper'

describe Child do
  it { should belong_to :user }
end
