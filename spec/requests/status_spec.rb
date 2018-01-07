require 'rails_helper'

RSpec.describe 'Status requests' do 
    describe 'GET /' do 
      before { get '/' } 

      it 'returns a json' do 
        json = JSON.parse(response.body)

        expect(json).not_to be_empty
        expect(json.size).to eq(2)
      end

      it 'returns status code 200' do 
        expect(response).to have_http_status(200)
      end
    end

    describe 'GET /:moment' do 
      before { get '/45904853' }

      it 'returns a json' do 
        json = JSON.parse(response.body)

        expect(json).not_to be_empty
        expect(json.size).to eq(2)
      end

      it 'returns status code 200' do 
        expect(response).to have_http_status(200)
      end
    end

end