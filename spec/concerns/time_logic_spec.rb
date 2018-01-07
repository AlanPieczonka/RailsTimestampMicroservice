require "spec_helper"
require "rails_helper"
require 'input_output_data'

# I decided not to test Core Ruby methods like to_i or to_time

describe TimeLogic do 
  let(:obj) { Class.new.extend(described_class) }

  describe 'json valid outputs' do 
    it "returns proper answer for the timestamp input" do
      TIMESTAMPS.each do |timestamp| 
        expect(obj.answer_for_timestamp(timestamp[:input])).to eq(timestamp[:output])
      end
    end

    it "returns proper answer for the date input" do 
      DATES.each do |date|
        expect(obj.answer_for_date(date[:input])).to eq(date[:output])
      end
    end
  end

  describe 'json invalid outputs' do 
    it "returns null properites for invalid input" do 
      INVALID_INPUTS.each do |invalid_input|
        expect(obj.results(invalid_input[:input])).to eq(invalid_input[:output])
      end
    end
  end

  describe 'private methods' do 
    
    context 'is_input_valid?' do 
      it "returns true for valid timestamps" do 
        TIMESTAMPS.each do |timestamp|
          expect(obj.send(:is_input_valid?, timestamp[:input])).to eq(true)
        end
      end

      it "returns truthy value for valid dates" do 
        DATES.each do |date|
          expect(obj.send(:is_input_valid?, date[:input])).to be_truthy
        end
      end

      it "returns false for invalid input" do 
        INVALID_INPUTS.each do |invalid_input|
          expect(obj.send(:is_input_valid?, invalid_input[:input])).to eq(false)
        end
      end
    end

    context 'is_timestamp?' do 
      it "returns true for timestamps" do 
        TIMESTAMPS.each do |timestamp|
          expect(obj.send(:is_timestamp?, timestamp[:input])).to eq(true)
        end
      end

      it "returns false for dates" do 
        DATES.each do |date|
          expect(obj.send(:is_timestamp?, date[:input])).to eq(false)
        end
      end
    
      it "returns false for invalid inputs" do 
        INVALID_INPUTS.each do |invalid_input|
          expect(obj.send(:is_timestamp?, invalid_input[:input])).to eq(false)
        end
      end
    end

    context "convert_timestamp_to_date" do
      it 'converts timestamp to date' do 
        TIMESTAMPS.each do |timestamp|
          expect(obj.send(:convert_timestamp_to_date, timestamp[:input])).to eq(timestamp[:output][:natural])
        end
      end
    end

    context "convert_date_to_timestamp" do 
      it 'converts date to timestamp' do 
        DATES.each do |date|
          expect(obj.send(:convert_date_to_timestamp, date[:input])).to eq(date[:output][:unix])
        end
      end
    end

    context "nil hash" do
      it 'returns nil hash' do 
        expect(obj.send(:nil_hash)).to eq(NIL_HASH)
      end
    end

  end

end
  