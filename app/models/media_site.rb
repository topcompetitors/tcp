class MediaSite < ActiveRecord::Base
  attr_accessible :name
  has_many :media_matrix_rs, :dependent => :destroy
  has_many :matrices, :through => :media_matrix_rs
  
  has_many :media_company_rs, :dependent => :destroy
  has_many :companies, :through => :media_company_rs
  
end
