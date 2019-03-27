---
external help file: CallPass-help.xml
Module Name: CallPass
online version:
schema: 2.0.0
---

# Get-APRSCallPass

## SYNOPSIS
Generates APRS-IS passcode of a call sign.

## SYNTAX

```
Get-APRSCallPass [-Call] <String> [<CommonParameters>]
```

## DESCRIPTION
The `Get-APRSCallPass` cmdlet generates APRS-IS passcode for the APRS-IS.

Note: This cmdlet is intended for use by the licensed radio amateurs only. It is user's sole responsibility to ensure that any actions the user perform with this cmdlet are in compliance with applicable laws and regulations.

## EXAMPLES

### Example 1: Generate a passcode for the call sign "example"
```powershell
Get-APRSCallPass -Call "example"
```

The above generates a passcode for call sign "example"

## PARAMETERS

### -Call
Call sign to generate passcode for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
Generates APRS-IS passcode of a call sign.

## OUTPUTS
### System.Int16
An APRS-IS passcode for the APRS-IS.

## NOTES
## RELATED LINKS
[Test-APRSCallPass](Test-APRSCallPass)