Import-Module dbatools
import-Module dbatools.library

Describe 'Hello World Tests' {
    It 'should return Hello World' {
        $result = 'Hello World'
        $result | Should -Be 'Hello World'
    }
}

$Credential = New-Object System.Management.Automation.PSCredential('sa', $(ConvertTo-SecureString 'Password12!' -AsPlainText -Force))

Invoke-DbaQuery -SqlInstance $TestConfig.instance1 -SqlCredential $Credential -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance2 -SqlCredential $Credential -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance3 -SqlCredential $Credential -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance4 -SqlCredential $Credential -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance5 -SqlCredential $Credential -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance6 -SqlCredential $Credential -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
