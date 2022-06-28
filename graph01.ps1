# Run Azure Resource Graph query with 'order by'
#Get-AzResource | Measure-Object
#Measure-Command -Expression {Get-AzResource}


# Store the query in a variable
$query = 'Resources | project name, type | order by name asc | limit 5'

# Run Azure Resource Graph query with `order by` first, then with `limit`
Search-AzGraph -Query $query
