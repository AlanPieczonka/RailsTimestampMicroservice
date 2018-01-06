class ApplicationController < ActionController::API
  INFO = {
    info: "Just give me the date after '/' character in the url",
    example: 'localhost:3000/1390283 or localhost:3000/December 15, 2015'    
  }

  def index
    render json: INFO
  end
end
