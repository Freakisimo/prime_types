defmodule PrimeTypes.Twin do
  def belonging_to?(prime_number, primes) do
    Enum.member?(primes, prime_number+2) || Enum.member?(primes, prime_number-2)
  end
end