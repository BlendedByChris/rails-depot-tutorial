class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_uniqueness_of :title
  validates_length_of :title, :minimum => 10
  validates_format_of :image_url,
                      :with     => %r{\.(gif|jpg|png)$}i,
                      :message  => 'must be a URL for GIF, JPG, or PNG image.'
  validates_numericality_of :price, :message => "should be a number like 12.34☺"
  validate :price_must_be_at_least_a_cent

  def self.find_products_for_sale
    find(:all, :order => "title")
  end

  protected

  def price_must_be_at_least_a_cent
    errors.add(:price, 'should be atleast 0.01') if price.nil? || price < 0.01
  end

end