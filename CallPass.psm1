# CallPass. APRS-IS Passcode Utility Module
# by Hideki Saito
#
# Based on callpass.c from xastir.
# http://xastir.org/index.php/Main_Page

# .ExternalHelp CallPass-help.xml
function Get-APRSCallPass {
    [OutputType([Int16])]
    param(
        [Parameter(Mandatory = $true, Position = 0, HelpMessage = "Call sign to generate passcode for.", ValueFromPipeline = $true)]
        [string]$Call
    )

    $Call = $Call.ToUpper();

    $callArray = $Call.ToCharArray()

    $hash = [Int16]0x73e2;
    $i = 0;
    $length = $call.Length

    while ($i -lt $length) {
        $hash = $hash -bxor ([convert]::ToInt16($callArray[$i]) -shl 8)
        $hash = $hash -bxor [convert]::ToInt16($callArray[$i + 1])
        $i += 2
    }

    return [Int16]($hash -band 0x7fff)
}

# .ExternalHelp CallPass-help.xml
function Test-APRSCallPass {
    [OutputType([bool])]
    param(
        [Parameter(Mandatory = $true, Position = 0, HelpMessage = "Call sign to test passcode." )]
        [string]$Call,

        [Parameter(Mandatory = $true, Position = 1, HelpMessage = "Passcode to test.")]
        [int]$Passcode
    )

    $pass = Get-APRSCallPass -Call $Call
    return $pass -eq $Passcode
}