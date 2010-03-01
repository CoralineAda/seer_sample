class HomeController < ApplicationController

  def index
  end

  def area_chart
    @data = Widget.all
    @series = @data.map{|w| w.widget_stats}
  end
  
  def bar_chart
    @widgets = Widget.all
  end
  
  def column_chart
    @widgets = Widget.all
  end
  
  def gauge
    @data = Widget.all
  end
  
  def line_chart
    @data = Widget.all
    @series = @data.map{|w| w.widget_stats}
  end
  
  def pie_chart
    @data = Widget.all
  end
  
end
