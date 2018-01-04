class Api::MailsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @params = params
        PersonalMailer.send_mail(@params[:to], @params[:subject], @params[:body])
    end
end
