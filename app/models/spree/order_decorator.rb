Spree::Order.class_eval do


  def send_order_sms


    if (Spree::Config.twilio_order_sms_enabled)
      @order = self
      html = File.open(File.expand_path('../../../views/spree/order_mailer/confirm_order_sms.text.erb', __FILE__)).read
      template = ERB.new(html)
      body = template.result(binding)

      @client = Twilio::REST::Client.new
      response = @client.messages.create(
          from: Spree::Config.twilio_from_number,
          to: Spree::Config.twilio_to_number,
          body: body
      )
      Rails.logger.info "send_order_sms_response: #{response}"
    end

  end

end

Spree::Order.state_machine.after_transition :to => :complete,
                                            :do => :send_order_sms