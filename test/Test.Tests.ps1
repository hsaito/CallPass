$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Test" {
    It "Validates CallPass for AAAAA" {
        Test "AAAAA" | Should -Be "13026"
    }

    It "Validates CallPass for BBBBB" {
        Test "BBBBB" | Should -Be "12770"
    }

    It "Validates CallPass for CCCCC" {
        Test "CCCCC" | Should -Be "12514"
    }
}
