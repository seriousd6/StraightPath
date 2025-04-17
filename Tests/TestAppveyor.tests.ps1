Describe 'Hello World Tests' {
    It 'should return Hello World' {
        $result = 'Hello World'
        $result | Should -Be 'Hello World'
    }
}
Invoke-DbaQuery -SqlInstance $TestConfig.instance1 -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance2 -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance3 -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance4 -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance5 -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
Invoke-DbaQuery -SqlInstance $TestConfig.instance6 -Query 'SELECT @@servername,@@version' #| Should -Not -BeNullOrEmpty
