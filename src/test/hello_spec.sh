HOGE=hoge

Describe 'hello.sh'
  Include src/main/hello.sh

  echo "HOGE=${HOGE}"

  It 'says hello'
    When call hello ShellSpec
    The output should equal 'Hello ShellSpec?'
  End
End
