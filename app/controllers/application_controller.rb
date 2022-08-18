class ApplicationController < ActionController::API
  SECRET = "123321ruby_blog"

  def authentication
    #making a request to a secure route, token must be included
    decode_data = decode_user_data(request->headers["token"])
    #getting user id from a nested JSON in array
    user_data = decode_data[0]["user_id"] unless !decode_data
    
  end
end
