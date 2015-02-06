class RequestMailer < ActionMailer::Base
  default from: "movinghomecr@gmail.com"

  def request_published(request)
    @request = request
    mail(to: @request.user.email, subject: 'Se ha publicado tu solicitud' )
  end

  def request_processed(request)
    @request = request
    mail(to: @request.user.email, subject: 'Se ha completado tu solicitud' )
  end

  def request_anulled(request)
    @request = request
    mail(to: @request.user.email, subject: 'Has anulado tu solicitud' )
  end
end
