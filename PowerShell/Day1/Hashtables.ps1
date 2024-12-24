# Hashtables
# key-value pairs

$ht1 = @{}
$ht1.GetType()

# to store data in Unordered HT
$ht2 = @{Name = "Jeetu" ; tech = "PowerShell" ; Client = "LTI"}
$ht2

# to store data in Ordered HT
$ht3 = [ordered]@{Name = "Jeetu" ; tech = "PowerShell" ; Client = "LTI"}
$ht3

# add data to the HT
$ht3.Add("Location","Coimbatore")
$ht3

# change the value from the HT
$ht3["Name"] = "Jitendra Singh Tomar"
$ht3

# remove any data from HT
$ht3.Remove("Location")
$ht3


#list only the keys
$ht3.Keys
$ht3.Values
$ht3["name"]
$ht3["Jitendra Singh Tomar"]    #invalid