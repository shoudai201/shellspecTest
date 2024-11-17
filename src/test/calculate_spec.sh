Describe 'calulate.sh'
  Include src/main/calculate.sh
  It 'add'
    When call add 1 2
    The output should equal 3
  End
End