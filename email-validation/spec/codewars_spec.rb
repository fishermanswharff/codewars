require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:email) { 'joe@example.com' }
  let(:invalid_email) { 'joe' }

  it 'returns true for valid emails' do
    expect(validate_email(email)).to eq true
  end

  it 'returns false for invalid emails' do
    expect(validate_email(invalid_email)).to eq false
  end


end
