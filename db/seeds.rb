require 'csv'
require 'json'
require 'pry-byebug'

filepath_lgas = File.join(__dir__,'./lc-files/lgas.csv')
filepath_addresses = File.join(__dir__,'./lc-files/addresses.csv')
filepath_properties = File.join(__dir__,'./lc-files/properties.csv')
filepath_properties_json= File.join(__dir__,'./lc-files/properties.json')
# =========================
# puts "==== purging old entries ====="
# Lgasfile.destroy_all
# puts "==== old entries purged! ====="
# # ========== lgas ==============
# puts "========== lgas =============="

# CSV.foreach(filepath_lgas) do |row|
#     puts "generating #{row[0]} | #{row[1]} | #{row[2]}"
#     file = Lgasfile.new(
#       code: row[0].to_i,
#       name: row[1].to_s, 
#       long_name: row[2].to_s
#       )
      
#     file.save ? (puts "#{file.name} created!") : "failed to create"
#   end
  
#   Lgasfile.first.destroy # Due to lack of time not parsing CSL with headers. doing cheap and nasty parsing with headers
  
#   puts "======= lgas complete ========"
#   puts ""
# # ==============================

# # ======== properties ==========
#   puts "======== properties =========="
#   CSV.foreach(filepath_properties) do |row|
#     puts "#{row[0]} | #{row[1]} | #{row[2]} | #{row[3]} | #{row[4]}"
#     lgasfile = Lgasfile.find_by(code: row[1].to_i)
#     file = Property.new(
#       lc_id: row[0].to_i,
#       council_property_number: row[2].to_i,
#       longitude: row[3].to_f, 
#       latitude: row[4].to_f
#       )
#       # binding.pry
#     file.lgasfile = lgasfile
#     file.save ? (puts "record created!") : (puts "==============failed to create==============")
#   end

  
  # ==============================

# ========= addresses ==========
puts "==== generating addresses ===="

CSV.foreach(filepath_addresses) do |row|
  puts "#{row[0]} | #{row[1]} | #{row[2]} | #{row[3]} | #{row[4]} | #{row[5]}"
  # placeholder this is for model generation
    # feature_id | property_id | full_address | lga_code | state | postcode
    rails g Address feature_id:integer property:references full_address:string lgasfile:references state:string postcode:integer

  lgasfile = Lgasfile.find_by(code: row[1].to_i)
  file = Property.new(
    lc_id: row[0].to_i,
    council_property_number: row[2].to_i,
    longitude: row[3].to_f, 
    latitude: row[4].to_f
    # ========
    
    )
    # binding.pry
  file.lgasfile = lgasfile
  file.save ? (puts "record created!") : (puts "==============failed to create=============")
end

puts "===== addresses generated ====="
puts ""
# ==============================


# ====== properties JSON =======
# puts "====== properties JSON ======="
# properties_json = File.read(filepath_properties)
# properties = JSON.parse(properties_json)
# ==============================
