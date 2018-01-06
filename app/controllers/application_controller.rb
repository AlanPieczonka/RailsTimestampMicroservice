class ApplicationController < ActionController::API
  include Response 
  INFO = {
    info: "Just give me the date after '/' character in the url",
    example: 'localhost:3000/1390283 or localhost:3000/December 15, 2015'    
  }

  def index
    json_response(INFO)
  end
end
