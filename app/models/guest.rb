class Guest
  attr_reader :signed_in, :email
  def email
    "Guest@groupwnd.com"
  end
  def signed_in
    false
  end
end
