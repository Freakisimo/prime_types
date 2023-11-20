defmodule PrimeTypes.Balanced do
  def belonging_to?(prime_number, primes) do

    prime_index = Enum.find_index(primes, fn x -> x == prime_number end)

    {:ok, a_prime} = Enum.fetch(primes, prime_index - 1)
    {:ok, b_prime} = Enum.fetch(primes, prime_index + 1)
    
    prime_number == (a_prime + b_prime) / 2

  end
end