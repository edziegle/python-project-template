from src.main import main


def test_main(mocker):
    """
    Test that the main function prints "Hello world!"
    """
    mock_print = mocker.patch("builtins.print")
    main()
    mock_print.assert_called_once_with("Hello world!")
