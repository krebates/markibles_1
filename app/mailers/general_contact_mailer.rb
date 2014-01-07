class GeneralContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def receipt(contact_form)
    @contact_form = contact_form

    @greeting = "Hi"

    mail to: "krebates@gmail.com",
      from: @contact_form.email,
      subject: @contact_form.subject
  end
end
