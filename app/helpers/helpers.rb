class Helpers
  
  def self.current_user(session)
    @user = User.find(session[:user_id])
  end
  
  def self.is_logged_in?(session)
    #session.has_key?('user_id')? ture : false
    #binding.pry
    if session.has_key?(:user_id)
      true
    else
      false
    end
  end
end