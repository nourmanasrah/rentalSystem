class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos

  geocoded_by :street_address
  after_validation :geocode, if: :street_address_changed?

    validates :room_type, presence: true
    validates :accommodate, presence: true
    validates :num_bedroom, presence: true
    validates :num_bed, presence: true
    validates :bldg_number, presence: true
    validates :num_bathroom, presence: true
    validates :list_name, presence: true,uniqueness: true, length: {maximum: 30}
    validates :summary, presence: true, length: {maximum: 100}
    validates :country, presence: true
    validates :city, presence: true
    validates :street_address, presence: true
    validates :nightly_price, presence: true
    validates :weekly_price, presence: true
    validates :monthly_price, presence: true
    validates :service_fee, presence: true
    validates :cleaing_fee, presence: true
    validates :security_deposit, presence: true
    validates :basic_fund, presence: true
    validates :property_type, presence: true

end
