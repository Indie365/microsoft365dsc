<#
This example creates a new Device Enrollment Platform Restriction.
#>

Configuration Example
{
    param(
        [Parameter(Mandatory = $true)]
        [PSCredential]
        $credsGlobalAdmin
    )
    Import-DscResource -ModuleName Microsoft365DSC

    node localhost
    {
        IntuneDeviceEnrollmentPlatformRestriction 'DeviceEnrollmentPlatformRestriction'
        {
            DisplayName                                  = 'My DSC Restriction'
            AndroidPersonalDeviceEnrollmentBlocked       = $False
            AndroidPlatformBlocked                       = $False
            Description                                  = ''
            iOSOSMaximumVersion                          = '11.0'
            iOSOSMinimumVersion                          = '9.0'
            iOSPersonalDeviceEnrollmentBlocked           = $False
            iOSPlatformBlocked                           = $False
            MacPersonalDeviceEnrollmentBlocked           = $False
            MacPlatformBlocked                           = $True
            WindowsMobilePersonalDeviceEnrollmentBlocked = $False
            WindowsMobilePlatformBlocked                 = $True
            WindowsPersonalDeviceEnrollmentBlocked       = $True
            WindowsPlatformBlocked                       = $False
            Ensure                                       = 'Present'
            Credential                                   = $credsGlobalAdmin
        }
    }
}
