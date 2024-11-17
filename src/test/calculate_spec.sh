Describe 'calulate.sh'
  Include src/main/calculate.sh
  It 'add'
    When call add 1 2
    The output should equal 3
  End

# パラメータテスト
Describe 'parameters'
  Parameters
    "#1" 1 2 3
    "#2" 4 5 9
  End

  It "performs a parameterized test ($1)"
    When call echo "$(($2 + $3))"
    The output should eq "$4"
  End
End

End