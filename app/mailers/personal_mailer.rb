class PersonalMailer < ApplicationMailer

    def send_mail(to, subject, body)
        mail = mail(from: to, to: to, subject: subject, body: body)
    end
end