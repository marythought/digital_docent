# require 'tiny_tds'
# client = TinyTds::Client.new username: 'mary@marytesting', password: 'D1etc0ke',
# host: 'marytesting.database.windows.net', port: 1433,
# database: 'MaryTest', azure:true
# results = client.execute("select * from SalesLT.Product")
# results.each do |row|
# puts row
# end

require 'tiny_tds'
client = TinyTds::Client.new username: 'docent@digitaldocent', password: 'rainierclub1',
host: 'digitaldocent.database.windows.net', port: 1433,
database: 'Digital Docent', azure:true
results = client.execute("SET ANSI_NULLS ON")
results = client.execute("SET CURSOR_CLOSE_ON_COMMIT OFF")
results = client.execute("SET ANSI_NULL_DFLT_ON ON")
results = client.execute("SET IMPLICIT_TRANSACTIONS OFF")
results = client.execute("SET ANSI_PADDING ON")
results = client.execute("SET QUOTED_IDENTIFIER ON")
results = client.execute("SET ANSI_WARNINGS ON")
results = client.execute("SET CONCAT_NULL_YIELDS_NULL ON")
require 'date'
t = Time.now
curr_date = t.strftime("%Y-%m-%d %H:%M:%S.%L")
results = client.execute("INSERT SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, SellStartDate)
OUTPUT INSERTED.ProductID VALUES ('SQL Server Express New', 'SQLEXPRESS New', 0, 0, '#{curr_date}' )")
results.each do |row|
puts row
end
