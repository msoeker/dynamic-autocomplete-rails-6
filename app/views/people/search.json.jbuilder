json.array!(@people) do |person|
  json.name person.last_name + ' ' + person.first_name
end