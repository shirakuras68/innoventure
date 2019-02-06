require_relative 'layout'

class ReservationCompleted < Layout
  set_url '/戦績データ/final_confirm.html{?query*}'

  element :back_button, '#returnto_checkInfo'
  element :message, '#slide1'
end
