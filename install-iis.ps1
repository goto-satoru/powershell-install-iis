# Install IIS
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Configure IIS to use NTLM authentication
Set-WebConfigurationProperty -filter "/system.webServer/security/authentication/windowsAuthentication" -name enabled -value true
Set-WebConfigurationProperty -filter "/system.webServer/security/authentication/windowsAuthentication/providers" -name "." -value "NTLM"
