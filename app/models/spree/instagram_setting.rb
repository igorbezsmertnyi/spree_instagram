class Spree::InstagramSetting < ApplicationRecord
  def self.access_token
    first_or_create.access_token
  end

  def self.target_account
    first_or_create.target_account
  end

  def self.set_access_token(access_token)
    first_or_create.update(access_token: access_token)
  end

  def self.set_target_account(target_account)
    first_or_create.update(target_account: target_account)
  end
end
