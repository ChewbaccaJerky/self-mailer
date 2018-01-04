class Api::MailsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def send_mail
        @params = params

        if @params[:to].nil? || @params[:body].nil?
            render 'api/mails/error_msg.json'
        else
            if @params[:subject].nil?
                @params[:subject] = ""
            end
            PersonalMailer.send_mail(@params[:to], @params[:subject], @params[:body]).deliver_now
        end
    end
end
