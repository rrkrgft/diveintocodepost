class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    binding.pry
    @users = Team.find(@agenda.team_id).users
    mail to: @users.pluck(:email), subject: "アジェンダの削除通知"
  end
end
