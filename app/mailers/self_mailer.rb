class SelfMailer < ApplicationMailer
    
    def initialize(email, address)
        @email = email
    end

end
