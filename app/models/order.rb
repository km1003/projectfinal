class Order < ActiveRecord::Base
  attr_accessible :order_number, :cpu, :ram, :video, :hdd
  
  belongs_to :user
  
  validates :order_number, :presence => true
  validates :cpu, :presence => true,
                      :length => { :maximum => 150}
  validates :ram, :presence => true,
                      :length => { :maximum => 150}
  validates :video, :presence => true,
                      :length => { :maximum => 150}
  validates :hdd, :presence => true,
                      :length => { :maximum => 150}
  validates :user_id, :presence => true
end
