# CallPass
## About
CallPass is a passcode generation and validation tool for APRS-IS.

**Note**: This tool is intended for use by the licensed radio amateurs only. It is user's sole responsibility to ensure that any actions the user perform with this tool are in compliance with applicable laws and regulations.

There are two tools included in this module, `Get-APRSCallPass` and `Test-APRSCallPass`. Use PowerShell's help functionality to find usage information.

## Installing
You will be able to install this package from [PowerShell Gallery](https://www.powershellgallery.com) using the command below:

```PowerShell
Install-Module CallPass
```

If installing just for your personal profile, use:

```PowerShell
Install-Module CallPass -Scope CurrentUser
```

## License
GNU GENERAL PUBLIC LICENSE Version 2. See the [COPYING](COPYING) file for detail.

Code based on `callpass.c` packaged in [Xastir](http://xastir.org/index.php/Main_Page).

APRS® is a registered trademark of Bob Bruninga.