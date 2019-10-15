def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each{|key, value|
    value.each{|key1, value1|
      value1.each{|name|
        if !new_hash.has_key?(name)
          new_hash[name] = []
        end

        if !new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end
        puts new_hash[key]
      }
    }
   }
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
