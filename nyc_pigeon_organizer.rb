def nyc_pigeon_organizer(data)
  new_hash = {}
    data.each do |key, specs|
      specs.each do |value, names|
        names.each do |name|
        if not new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if not new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end

        new_hash[name][key].push(value.to_s)
      end
    end
  end
  puts new_hash
end


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
