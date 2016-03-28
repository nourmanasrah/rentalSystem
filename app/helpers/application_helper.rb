module ApplicationHelper
    def avatar_url(user)
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase
        "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?=identical&s=233"
    end

  #  def bootstrap_class_for flash_type
  #   case flash_type
  #     when :success
  #       "alert-success"
  #     when :error
  #       "alert-error"
  #     when :alert
  #       "alert-block"
  #     when :notice
  #       "alert-info"
  #     else
  #       flash_type.to_s
  #   end
  # end
end