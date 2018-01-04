class Api::MailsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index

    end

    def create
        @params = params
        puts @params
    end
end
