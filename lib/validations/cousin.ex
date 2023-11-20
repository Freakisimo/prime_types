defmodule PrimeTypes.Cousin do
  def belonging_to?(prime_number, primes) do
    Enum.member?(primes, prime_number+4) || Enum.member?(primes, prime_number-4) || prime_number == 3
  end
end