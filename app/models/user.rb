class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :rememberable, :trackable, :omniauthable, :omniauth_providers => [:github, *(:developer if Rails.env.development?)]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid:auth.uid).first_or_create do |user|
      # Beware, some providers put the email in a different path. 
      # Add a conditional here to deal with different providers
      user.email = auth.info.email
    end
  end

end