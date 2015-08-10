Spree::AppConfiguration.class_eval do
  preference :twilio_order_sms_enabled, :boolean, :default=>false
  preference :twilio_from_number, :string
  preference :twilio_to_number, :string
end