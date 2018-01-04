class Api::MailsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def send_mail
        @params = params
        PersonalMailer.send_mail(@params[:to], @params[:subject], @params[:body]).deliver_now
    end
end
