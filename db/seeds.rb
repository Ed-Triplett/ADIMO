# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

'Fortress,Church,Monastery,City Walls,Bridge'.split(',').each do |o|
  ArchitectureType.find_or_create_by_architecture_type o
end

'Andalucia,Extremadura,Castilla Leon,Madrid,Castilla La Mancha,Galicia,Asturias,Cantabria,La Rioja,Navarre,Aragon,Catalonia,Valencia,Murcia'.split(',').each do |o|
  SitePrincipality.find_or_create_by_principality_name o
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
Quadrangular Castrum'.split("\n").each do |o|
  FortmetaPlantype.find_or_create_by_fortmeta_plantype o
end

'Calatrava (1157-1808)
Santiago (1171-1808)
Alcantara (1218-1808)
Avis (1223-1834)
Templars (1129-1312)
Montesa (1312-1739)
Hospitallers (1113-1805)
Evora (1176-1223)
San Julian del Pereiro (1176-1218)
none (1100-1800)'.split("\n").each do |o|
  name = o.split ('(')[0].strip
  origin_date =o.split('(')[1].split ('-')[0]
  dissolution_date =o.split('(')[1].split ('-') [1].split (')')[0]
  mo=MilitaryOrder.find_or_create_by_name(name)
  #mo.orgin_date=origin_date
  #mo.dissolution_date=dissolution_date
  #mo.save
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

"Alfonso VII (1126-1157) Leon-Castile
Sancho III (1157-1158) Castile
Alfonso VIII (1158-1214) Castile
Enrique I (1214-1217) Castile
Fernando III (1217-1252) Leon-Castile
Alfonso X (1252-1284) Leon-Castile
Sancho IV (1284-1295) Leon-Castile
Fernando IV (1295-1312) Leon-Castile
Alfonso XI (1312-1350) Leon-Castile
Pedro the Cruel (1350-1369) Leon-Castile
Enrique II (1369-1379) Leon-Castile
Juan I (1379-1390) Leon-Castile
Enrique III (1390-1406) Leon-Castile
Alfonso I The Battler (1104-1134) Aragon
Ramiro II (1134-1137) Aragon
Ramon Berenguer IV (1131-1162) Catalonia / Catalonia-Aragon
Alfonso II (1162-1196) Aragon-Catalonia
Pedro II (1196-1213) Aragon
Jaime I (1213-1276) Aragon
Pedro III (1276-1285) Aragon
Alfonso III (1285-1291) Aragon
Jaime II (1291-1327) Aragon
Alfonso IV (1336-1387) Aragon
Juan I (1387-1395) Aragon
Martin the Humane (1395-1410) Aragon
Alfonso I Henriques (1128-1185) Portugal
Sancho I (1185-1211) Portugal
Alfonso II (1211-1223) Portugal
Sancho II (1223-1248) Portugal
Alfonso III (1248-1279) Portugal
Dinis (1279-1325) Portugal
Alfonso IV (1325-1357) Portugal
Pedro (1357-1367) Portugal
Fernando (1367-1383) Portugal
Joao I of Avis (1385-1433) Portugal
Garcia IV Ramirez (1134-1150) Navarre
Sancho VI (1150-1194) Navarre
Sancho VII (1194-1234) Navarre
Thibault I (1234-1253) Navarre
Thibault II (1253-1270) Navarre
Henry II (1270-1274) Navarre
Jeanne I (1274-1305) Navarre
Fernando II (1157-1188) Leon
Alfonso IX (1188- 1230) Leon".split("\n").each do |o|
  name = o.split('(')[0].strip
  start = o.split('(')[1].split('-')[0]
  stop = o.split('(')[1].split('-')[1].split(')')[0].strip
  place = o.split('(')[1].split('-')[1].split(')')[1].strip
  p = Patron.find_or_create_by_name(name)
  p.reign_begins = start
  p.reign_ends = stop
  p.kingdom = place
  p.save
end

'Tower Keep
Large Enclosure Castle
Quadrangular Castrum'.split("\n").each do |o|
  FortmetaPlantype.find_or_create_by_fortmeta_plantype(o)
end

'Occupation,Construction,Order Change'.split(',').each do |o|
  EventType.find_or_create_by_event_type(o)
end
