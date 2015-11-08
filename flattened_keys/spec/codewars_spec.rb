require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:hash1) {{ id: 1, info: { name: 'example', more_info: { count: 1 } } }}
  let(:hash2) {{ id: 1, info: { name: 'example' } }}
  let(:hash3) {  { :a=> { :b=> { :c=> { :d=>{ :e=>1 } } } }, :f=>2, :g=> {:h=>"h"} }  }
  let(:hash4) { {:a=>1, :b=>{:c=>2, "d"=>3, :e=>{"f"=>nil}}} }
  let(:hash5) { {"a"=>{:b=>1}, :c=>{"d"=>{:e=>2}}} }

  it 'flattens the keys of a single nested hash' do
    expect(hash2.flattened_keys).to eq({id: 1, info_name: 'example'})
  end

  it 'flattens the keys of deeply nested hashes' do
    expect(hash1.flattened_keys).to eq({id: 1, info_name: 'example', info_more_info_count: 1})
  end

  it 'works for any number of nested hashes' do
    expect(hash3.flattened_keys).to eq({:a_b_c_d_e=>1, :f=>2, :g_h=>"h"})
  end

  it 'If at any point in the path one of the keys is a string then the resulting flattened key should be a string as well.' do
    expect(hash4.flattened_keys).to eq ( {:a=>1, :b_c=>2, "b_d"=>3, "b_e_f"=>nil} )
  end

  it 'If at any point in the path one of the keys is a string then the resulting flattened key should be a string as well.' do
    expect(hash5.flattened_keys).to eq({"a_b"=>1, "c_d_e"=>2})
  end
end
