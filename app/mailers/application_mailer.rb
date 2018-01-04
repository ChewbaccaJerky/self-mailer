class ApplicationMailer < ActionMailer::Base
  default from: 'no_reply@self_mailer.com'
  layout 'mailer'
end
