class User < ApplicationRecord
    def self.find_or_create_from_auth_hash(auth)
        # hash schema is here  : https://github.com/omniauth/omniauth/wiki/Auth-Hash-Schema
		where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.first_name = auth.extra.raw_infofirst_name
			user.last_name = auth.extra.raw_info.last_name
			user.email = auth.extra.raw_info.email
			user.save!
		end
	end
end
