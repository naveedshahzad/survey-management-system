class ApplicationController < ActionController::Base
  def after_sign_out_path_for(scope)
    if(scope.to_sym == :respondent)
      respondent_portal_root_path
    else
      root_path
    end
  end
end
