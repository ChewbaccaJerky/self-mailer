class SelfMailer < ApplicationMailer
    
    def initialize(email)
        @email = email
        default_from: @email
    end

end
