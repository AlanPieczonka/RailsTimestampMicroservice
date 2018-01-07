class ApplicationController < ActionController::API
  include Response 
  include TimeLogic 

  INDEX_INFO = {
    info: "Just give me the timestamp or date after '/' character in the url",
    example: 'localhost:3000/1450137600 or localhost:3000/December 15, 2015'    
  }

  def index
    json_response(INDEX_INFO)
  end

  def moment 
    _results = results(params[:moment])
    json_response(_results)
  end

end