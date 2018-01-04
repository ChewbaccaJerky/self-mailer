class PersonalMailer < ApplicationMailer

    def send_mail(to, subject, body)
        mail = mail(to: to, subject: subject, body: body)
    end
end