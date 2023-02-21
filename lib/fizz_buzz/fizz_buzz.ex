defmodule FizzBuzz do 
  def build(file_name) do 
    file_name #tenho um aquivo
    |> File.read() #leio o arquivo
    |> handle_file_read() #lido com essa leitura
  end

  defp handle_file_read({:ok, result}) do # se essa leitura der sucesso
    result = 
      result
      |> String.split(",") # vou "explitar a minha string"
      |> Enum.map(&convert_and_evaluate_numbers/1) #converte cada elemento da minha string

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  defp convert_and_evaluate_numbers(elem) do # então  cada elemento eu vou.... 
    elem
    |> String.to_integer() #converte para inteiro
    |> evaluate_numbers() #verificar esse inteiro.
  end

  defp evaluate_numbers(number) when rem(number,3) == 0 and rem (number,5) == 0, do:fizzbuzz
  defp evaluate_numbers(number) when rem(number,3) == 0, do:fizz
  defp evaluate_numbers(number) when rem(number,3) == 0, do:buzz
  defp evaluate_numbers(number), do: number

end