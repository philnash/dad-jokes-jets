require 'open-uri'

class MessagesController < ApplicationController
  def create
    twiml = Twilio::TwiML::MessagingResponse.new
    twiml.message body: random_joke
    render xml: twiml.to_xml
  end

  private

  def random_joke
    open('https://icanhazdadjoke.com/', { 'Accept' => 'text/plain' }).read
  end
end
