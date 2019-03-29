$EC2SettingsFile="C:\\Program Files\\Amazon\\Ec2ConfigService\\Settings\\BundleConfig.XML"
$xml = [xml](get-content $EC2SettingsFile)
$xmlElement = $xml.get_DocumentElement()

Foreach ($element in $xmlElement.Property)
{
  if ($element in $xmlElement.Property)
  {
    $element.Value="Yes"
  }
}
$xml.Save($EC2SettingsFile)
