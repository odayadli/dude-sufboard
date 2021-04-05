class Surfboard < ApplicationRecord
  geocoded_by :location
  has_many :bookings, dependent: :destroy
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
  validates :details, :price, :location, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :user
  accepts_nested_attributes_for :user

  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |surfboard|
        csv << surfboard.attributes.values_at(*fields)
      end
    end
  end
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Surfboard.create! row.to_hash
    end
  end

end

