defmodule PrimeTypes.Chen do
  def belonging_to?(prime_number, primes) do
    cond do
      Enum.member?(primes, prime_number+2) ->
        true
      true ->
        primes
          |> Enum.filter(fn x -> rem(prime_number+2, x) == 0 end)
          |> Enum.filter(fn x -> Enum.member?(primes, div(prime_number, x)) || div(prime_number, x) == 1 end)
          |> Enum.empty?
          |> Kernel.not
    end
  end
end