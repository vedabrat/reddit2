class FavoriteMailer < ApplicationMailer
  default from: "vedabrat@gmail.com"
  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@whispering-ridge-21186.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@whispering-ridge-21186.com>"
    headers["References"] = "<post/#{post.id}@whispering-ridge-21186.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
