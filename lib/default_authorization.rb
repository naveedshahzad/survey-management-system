class DefaultAuthorization < ActiveAdmin::AuthorizationAdapter
  def authorized?(action, subject = nil)
    return true unless user.nil?
  end
end
