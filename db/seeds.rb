# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

['Sprocket', 'Spring', 'Ratchet'].each {|w| Widget.create(:name => w) }
Widget.all.each { |widget| (0..5).each { |i| widget.widget_stats.create(:date => i.months.ago, :quantity => rand(50) + 1) } }

l1 = Location.create(:name => 'Chicago, IL',   :latitude => '41.850033',  :longitude => '-87.6500523')
l2 = Location.create(:name => 'Austin, TX',    :latitude => '30.267153',  :longitude => '-97.7430608')
l3 = Location.create(:name => 'Claremont, VA', :latitude => '37.2279264', :longitude => '-76.9641321')

Widget.all.each { |widget| widget.update_attribute(:location_id, [l1, l2, l3].rand.id) }