module ApplicationHelper

    def avatar_url(user)
      if user.image
        user.image+"?type=large"
      else
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase
        "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
      end 
    end

    def toastr
        flash.each_with_object([]) do |(type, message), flash_messages|
          type = 'success' if type == 'notice'
          type = 'error' if type == 'alert'
          text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
          flash_messages << text.html_safe if message
        end.join("\n").html_safe
      end

end
