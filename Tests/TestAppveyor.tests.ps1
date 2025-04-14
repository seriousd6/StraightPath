Describe 'Hello World Tests' {
    It 'should return Hello World' {
        $result = 'Hello World'
        $result | Should -Be 'Hello World'
    }
}