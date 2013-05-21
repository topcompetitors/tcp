class Competence < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :company_competence_rs, :dependent => :destroy
  has_many :companies, :through => :company_competence_rs
end
