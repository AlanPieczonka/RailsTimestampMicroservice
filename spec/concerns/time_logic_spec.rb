require 'spec_helper'
require "rails_helper"
require 'input_output_helper'

describe TimeLogic do 
  let(:obj) {Class.new.extend(described_class)}

  it "returns proper answer for the timestamp inputs" do
    TIMESTAMPS.each do |timestamp| 
      expect(obj.answer_for_timestamp(timestamp[:input])).to eq(timestamp[:output])
    end
  end
  
end
  