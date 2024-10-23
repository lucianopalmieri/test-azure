$headers = @{
  "auth-token" = "4a7bfba1-4a6f-4011-8e02-22c8b7c34b83";
}
$jsonBase = @{
  "customName" = "optionalNameForRun";
}
$storedValues = @{
  "storedValueName1" = "Value1";
  "storedValueName2" = "Value2";
}
$jsonBase.Add("storedValues", $storedValues)
$body = $jsonBase | ConvertTo-Json
Invoke-RestMethod -Method POST -Headers $headers -ContentType "application/json" -Body $body -uri "https://api.testrigor.com/api/v1/apps/uPsh9qmYGbsJjDA7g/retest"