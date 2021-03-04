require 'csv'
require 'json'

filepath_lgas = 'lc-files/lgas.csv'
filepath_addresses = 'lc-files/addresses.csv'
filepath_properties = 'lc-files/properties.csv'
filepath_properties_json= 'lc-files/properties.json'

# ========== lgas ==============
puts "========== lgas =============="
CSV.foreach(filepath_lgas) do |row|
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end
# ==============================

# ========= addresses ==========
# puts "========= addresses =========="
# CSV.foreach(filepath_addresses) do |row|
#   puts "#{row[0]} | #{row[1]} | #{row[2]} | #{row[3]} | #{row[4]} | #{row[5]}"
# end
# ==============================

# ======== properties ==========
# puts "======== properties =========="
# CSV.foreach(filepath_properties) do |row|
#   puts "#{row[0]} | #{row[1]} | #{row[2]} | #{row[3]} | #{row[4]}"
# end
# ==============================

# ====== properties JSON =======
# puts "====== properties JSON ======="
# properties_json = File.read(filepath_properties)
# properties = JSON.parse(properties_json)
# ==============================
