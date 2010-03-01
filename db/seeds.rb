# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

['Sprocket', 'Spring', 'Ratchet'].each {|w| Widget.create(:name => w) }
Widget.all.each { |widget| (0..5).each { |i| widget.widget_stats.create(:date => i.months.ago, :quantity => rand(50) + 1) } }

