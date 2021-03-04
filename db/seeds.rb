require 'csv'
require 'json'

filepath_lgas = File.join(__dir__,'./lc-files/lgas.csv')
filepath_addresses = File.join(__dir__,'./lc-files/addresses.csv'
filepath_properties = File.join(__dir__,'./lc-files/properties.csv'
filepath_properties_json= File.join(__dir__,'./lc-files/properties.json'

# ========== lgas ==============
puts "========== lgas =============="
# Lgasfile.destroy_all

CSV.foreach(filepath_lgas) do |row|
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
  file = Lgasfile.new(code: row[0].to_i,name: row[1].to_s, long_name: row[2].to_s)
  puts "#{file.name} created!"
end
puts "======= lgas complete ========"
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
