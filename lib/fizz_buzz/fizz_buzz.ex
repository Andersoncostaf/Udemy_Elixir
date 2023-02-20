defmodule FizzBuzz do 

  def build(file_name) do
    |> File.read()
    |> handle_file_read()
   # file = File.read(file_name)
    handle_file_read()
  end

  def handle_file_read({:ok, result}), do: result
  def handle_file_read({:error, reason})
end