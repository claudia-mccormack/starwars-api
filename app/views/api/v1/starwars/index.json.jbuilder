json.array! @starwars.each do |starwar|
  json.partial! 'starwars.json.jbuilder', starwar: starwar
end
