# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

'Fortress,Church,Monastery,City Walls,Bridge'.split(',').each do |o|
  BuildingType.find_or_create_by_building_type o
end


'Spur,Hilltop,Valley,Unknown'.split(',').each do |o|
  BuildingTopography.find_or_create_by_building_topography o
end


'Royal Patron,Church Patron,Aristocratic Patron,Unknown'.split(',').each do |o|
  PatronType.find_or_create_by_patron_type o
end

'Alcazaba (Attached to pre-existing, walled community)
Outpost (Site too small to accommodate community)
Settlement (New settler town in lee of the castle)'.split("\n").each do |o|
  FortmetaSettlement.find_or_create_by_fortmeta_settlement o
end


'Tower Keep
Large Enclosure Castle
Quadrangular Castrum'.split("\n").split("\n").each do |o|
  FortmetaPlantype.find_or_create_by_fortmeta_plantype o
end


'Three-apse Church
Chapel
Cloister
Chapter House'.split("\n").each do |o|
  FortmetaMonastBlg.find_or_create_by_fortmeta_monast_bldgs o
end


'Fortified Church
Unfortified Church
Cathedral'.split("\n").each do |o|
 ChurchmetaType.find_or_create_by_churchmeta_type o
end
