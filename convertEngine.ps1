$site = "https://abcd.sharepoint.com/sites/efgh"
$list = "ListName"
$DocSetCt = "DocumentSet"
$itemIds = 1,19,21,56,59,61 ##Update this
 
$Credentials = Get-Credential -Message "Enter Valid Credentials"
Connect-PnPOnline -Url $site -UseWebLogin

foreach ($itemId in $itemIds){
    $itemId
    set-pnplistitem -list "$($list)" -identity $($itemId) -contentType $DocSetCt -values @{"HTML_x0020_File_x0020_Type"="Sharepoint.DocumentSet"}
} #forloop


