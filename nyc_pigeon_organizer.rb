def nyc_pigeon_organizer(data)
  pigeons = {}
    data.each do |key, specs|
      specs.each do |value, names|
        names.each do |name|
        if not pigeons.has_key?(name)
          pigeons[name] = {}
        end

        if not pigeons[name].has_key?(key)
          pigeons[name][key] = []
        end

        pigeons[name][key] << value.to_s
      end
    end
  end
  pigeons
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
