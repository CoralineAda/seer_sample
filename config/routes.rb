ActionController::Routing::Routes.draw do |map|
  map.resources :widget_stats

  map.resources :widgets

  map.resources :articles
  map.resources :tags

  map.area_chart '/area_chart', :controller => 'home', :action => 'area_chart'
  map.bar_chart '/bar_chart', :controller => 'home', :action => 'bar_chart'
  map.column_chart '/column_chart', :controller => 'home', :action => 'column_chart'
  map.gauge '/gauge', :controller => 'home', :action => 'gauge'
  map.line_chart '/line_chart', :controller => 'home', :action => 'line_chart'
  map.pie_chart '/pie_chart', :controller => 'home', :action => 'pie_chart'
  
  map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
