defmodule PrimeTypes.Twin do
  def belonging_to?(prime_number) do

    primes = PrimeTypes.get_primes(prime_number, 2)

    Enum.member?(primes, prime_number+2) || Enum.member?(primes, prime_number-2)

  end
end