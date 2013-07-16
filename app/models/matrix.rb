class Matrix < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :matrix_keywords
  
  has_many :company_matrix_rs, :dependent => :destroy
  has_many :companies, :through => :company_matrix_rs
  
  has_many :feed_matrix_rs, dependent: :destroy
  has_many :feeds, :through => :feed_matrix_rs
  
  has_many :media_matrix_rs, dependent: :destroy
  has_many :media_sites, :through => :media_matrix_rs
  
  has_many :media_feeds, :dependent => :destroy
  has_many :manual_feeds, :dependent => :destroy
  has_many :facebook_feeds, :dependent => :destroy
  has_many :twitter_feeds, :dependent => :destroy
  has_many :linkedin_feeds, :dependent => :destroy
  
  has_one :user_matrix_r
  has_one :user, :through => :user_matrix_r
  
  has_many :matrix_follower_rs, dependent: :destroy
  has_many :followers, :through => :matrix_follower_rs
  
  attr_reader :company_tokens
  attr_accessible :company_tokens, :company_ids
  
  def company_tokens=(ids)
    self.company_ids = ids.split(",")
  end
end