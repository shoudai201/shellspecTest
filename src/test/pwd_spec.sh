Describe "pwd"
    Describe "mocked path test"
        # pwd コマンドのモックを定義
        pwd() {
            echo "mocked pwd"
        }
        It "test1"
            When call pwd
            # モック化された pwd が呼ばれる
            The output should equal "mocked pwd"
        End
    End

    It "non-mocked path test"
        # こっちは pwd のモックを定義していないので、従来の pwd コマンドが実行される
        When call pwd
        The output should equal "/workspace"
    End
End