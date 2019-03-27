---
external help file: CallPass-help.xml
Module Name: CallPass
online version:
schema: 2.0.0
---

# Test-APRSCallPass

## SYNOPSIS
Tests an APRS-IS passcode for validity.

## SYNTAX

```
Test-APRSCallPass [-Call] <String> [-Passcode] <Int32> [<CommonParameters>]
```

## DESCRIPTION
The `Test-APRSCallPass` tests if given call sign and an APRS-IS are a valid combination.

Note: This cmdlet is intended for use by the licensed radio amateurs only. It is user's sole responsibility to ensure that any actions the user perform with this cmdlet are in compliance with applicable laws and regulations.

## EXAMPLES

### Example 1: Test if "1111" is valid passcode for the call sign "example"
```powershell
Test-APRSCallPass -Call "example" -Passcode 1111
```

The above tests if 1111 is a valid passcode for the call sign "example".

## PARAMETERS

### -Call
Call sign to test passcode.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Passcode
Passcode to test.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Boolean
Result of the verification.

## NOTES
## RELATED LINKS
[Get-APRSCallPass](Get-APRSCallPass)