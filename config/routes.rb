
SeerUpdate::Application.routes.draw do

#  map.area_chart '/area_chart', :controller => 'home', :action => 'area_chart'

get 'area_chart' => 'home#area_chart'

#  map.bar_chart '/bar_chart', :controller => 'home', :action => 'bar_chart'

get 'bar_chart' => 'home#bar_chart'

#  map.column_chart '/column_chart', :controller => 'home', :action => 'column_chart'

get 'column_chart' => 'home#column_chart'

#  map.gauge '/gauge', :controller => 'home', :action => 'gauge'

get 'gauge' => 'home#gauge'

#  map.line_chart '/line_chart', :controller => 'home', :action => 'line_chart'

get 'line_chart' => 'home#line_chart'

#  map.pie_chart '/pie_chart', :controller => 'home', :action => 'pie_chart'

get 'pie_chart' => 'home#pie_chart'

#  map.geo_chart '/geo_chart', :controller => 'home', :action => 'geo_chart'

get 'geo_chart' => 'home#geo_chart'

#  map.root :controller => "home"

root :to => 'home#index'

#  map.connect ':controller/:action/:id'

#  map.connect ':controller/:action/:id.:format'

end
