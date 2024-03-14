let
    Source = (board as number) as table =>
let
    web = Web.Contents(
        "https://api.monday.com/" & "v2",
    [
        Headers=[
            #"Method"="POST",
            #"Content-Type"="application/json",
            #"Authorization"="YOUR_TOKEN_HERE"
            ],
            Content=Text.ToBinary("{""query"": ""{ boards (ids:" & Number.ToText(board) & ") { items_page (limit:500) { cursor items { id name group { title } column_values (ids: [\""numbers\"", \""date\"", \""status\"", \""dropdown2\"", \""dropdown28\""]) {id  value text column {title}}}}}}""}")
            ]
    ),
    #"1stJSON" = Json.Document(web, 65001),
    data1 = #"1stJSON"[data][boards]{0}[items_page],
    #"convert to table" = Record.ToTable(data1)
in
   #"convert to table"
in 
    Source