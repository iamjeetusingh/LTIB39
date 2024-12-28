# XML Parsing #
###############
#URL - https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ms762271(v=vs.85)

# create a new XML file using notepad
notepad.exe books.xml

# fetch the XML content within powershell script
[xml]$xdata = Get-Content .\books.xml  # Fetching & typecasting XML data.
$xdata.GetType()                       # Getting the datatype of variable.

$xdata.catalog.book                    # listing the data.
$xdata.catalog.book | Format-Table     # listing the data in table.

$xdata.catalog.book | Select-Object Id, author
$xdata.catalog.book | Select-Object Id, author, title
$xdata.catalog.book | Select-Object Id, author, title, price

# list the book title having book ID 111
$xdata.catalog.book | Where-Object {$_.id -match "111"} | Select-Object title

# list book title, price for the book containing keyword as "Lover"
$xdata.catalog.book | Where-Object {$_.title -match "lover"} | Select-Object title, price

# list all book titles written by "Eva"
$xdata.catalog.book | Where-Object {$_.author -match "Eva"} | Select-Object title

