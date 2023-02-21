#01 
defmodule FizzBuzz do 
  def build(file_name) do 
    file_name #tenho um aquivo
    |> File.read() #leio o arquivo
    |> handle_file_read() #lido com essa leitura
  end

#02
  defp handle_file_read({:ok, result}) do # se essa leitura der sucesso
    result = 
      result
      |> String.split(",") # vou "explitar a minha string"
      |> Enum.map(&convert_and_evaluate_numbers/1) #converte cada elemento da minha string

    {:ok, result}
  end

#03
  defp handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

#04
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

#documentação do codigo
#01 Aqui estamos definindo o módulo FizzBuzz e a função build/1 que recebe o nome do arquivo como argumento. O objetivo desta função é ler o conteúdo do arquivo, processá-lo e retornar o resultado. O operador |> é usado para encadear chamadas de funções. Neste caso, estamos lendo o conteúdo do arquivo com File.read() e passando o resultado para a próxima função, handle_file_read/1.

#02
#A função handle_file_read/1 é definida como uma função privada defp que é chamada pela função build/1. Se a leitura do arquivo for bem-sucedida, a função receberá uma tupla {:ok, content} como argumento. O operador |> é usado novamente para encadear chamadas de funções. Aqui, estamos dividindo o conteúdo do arquivo em uma lista de strings com String.split(","), mapeando cada elemento da lista para um novo valor com a função convert_and_evaluate_numbers/1 e retornando o resultado como uma tupla {:ok, result}.

#03
#Se a leitura do arquivo falhar, a função handle_file_read/1 receberá uma tupla {:error, reason} como argumento. Nesse caso, a primeira cláusula irá retornar uma tupla {:error, message} com uma mensagem de erro formatada. A segunda cláusula é uma cláusula de captura que lida com quaisquer outras entradas que não correspondam às tuplas {:ok, content} ou {:error, reason}. Neste caso, ela retorna uma mensagem de erro genérica.

#04
#Se a leitura do arquivo falhar, a função handle_file_read/1 receberá uma tupla {:error, reason} como argumento. Nesse caso, a primeira cláusula irá retornar uma tupla {:error, message} com uma mensagem de erro formatada. A segunda cláusula é uma cláusula de captura que lida com quaisquer outras entradas que não correspondam às tuplas {:ok, content} ou {:error, reason}. Neste caso, ela retorna uma mensagem de erro genérica.

#05 por fim:
#A função convert_and_evaluate_numbers/1 é definida como uma função privada defp que é chamada pela função handle_file_read/1. Ele recebe um elemento da lista de strings lida do arquivo como argumento. Primeiro, convertemos a string em um número inteiro com String.to_integer(), e depois verificamos se o número é divisível por 3 e/ou 5 com a função evaluate_numbers/1. O resultado dessa função é então retornado.