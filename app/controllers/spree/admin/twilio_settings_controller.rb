
module Spree
  module Admin
    class TwilioSettingsController < BaseController


      def update

        params.each do |name, value|
          next unless Spree::Config.has_preference? name
          Spree::Config[name] = value
        end

        flash[:success] = "Twilio settings have been successfully updated"
        redirect_to edit_admin_twilio_setting_url
      end

    end

  end
end


