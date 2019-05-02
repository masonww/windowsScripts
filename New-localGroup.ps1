Function new-localgroup {
Param(
[string]$ComputerName=".",
[string]$GroupName
)
  $objOu = [ADSI]"WinNT://$ComputerName"
  $objGroup = $objOU.Create("Group", $groupname)
  $objGroup.SetInfo()
  $objGroup.description = ""
  $objGroup.SetInfo()
}
