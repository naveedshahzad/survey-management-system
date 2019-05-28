class RespondentAuthorization < ActiveAdmin::AuthorizationAdapter
  def authorized?(action, subject = nil)
    return true if action == :read
    return true if (subject.blank? || subject == Response || subject.is_a?(Response)) && (subject.new_record? || subject.respondent_id == user.id) && [:create, :update, :destroy].include?(action)
    return true if (subject.blank? || subject == SurveyResponse || subject.is_a?(SurveyResponse)) && (subject.try(:new_record?) || subject.try(:respondent_id) == user.id) && [:create, :update, :destroy].include?(action)
    false
  end
end
