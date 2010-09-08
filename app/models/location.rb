class Location < ActiveRecord::Base

  has_many :widgets

  def geocoded?
    self.latitude && self.longitude
  end
  
  def widget_count
    self.widgets.count
  end
  
end
