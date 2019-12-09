MAX_PROMO_RATE = 5

def send_promo_email(user)
  if user.email.present?
    if user.promos_sent < MAX_PROMO_RATE
      UserMailer.promo_email(user).deliver
    end
  end
end
