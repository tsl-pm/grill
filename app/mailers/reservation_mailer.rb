class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.confirm.subject
  #
  def confirm(the_reservation)
    @the_reservation = the_reservation

    mail to: "to@example.org", subject: "Reservation Confirmation"
  end
end
