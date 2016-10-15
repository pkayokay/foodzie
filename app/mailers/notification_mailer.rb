class NotificationMailer < ActionMailer::Base
  default from: "no-reply@foodzie.com"

  def comment_added
    mail(to: "foodzie.herokuapp@gmail.com",
    subject: "A comment has been added to your place")
  end

end