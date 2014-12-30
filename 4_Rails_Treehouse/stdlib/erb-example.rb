require 'erb'

treehouse = {
    name: 'Treehouse',
    location: 'Treehouse Island'
    }

template = <<-TEMPLATE
From the desk of <%= treehouse[:name] %>
___________________________________________
Welcome to <%= treehouse[:location] %>

We hope you enjoy your stay.
___________________________________________

<% treehouse.keys.each do |key| %>
    Key: <%= key %>
<% end %>
TEMPLATE


erb = ERB.new(template)

puts erb.result