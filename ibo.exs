defmodule Fibo do
  def fibo(number_1, number_2, index) when index <= 1 do 
    series = number_1 + number_2
    IO.puts series
    IO.puts "Here is the Series :)"
  end

  def fibo(number_1, number_2, index) do
    series = number_1 + number_2
    IO.puts series
    fibo(number_2, series, index - 1)
  end
end



input = Integer.parse(IO.gets "Enter the Number of Numbers You Want in The Fibonacci's Series ")

index = elem(input, 0)

Fibo.fibo(0, 1, index)
