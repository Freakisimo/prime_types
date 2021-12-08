defmodule PrimeTypes do
  @moduledoc """
  Documentation for `PrimeTypes`.
  """

  # def write_csv(input) do
  #   # file = File.open!("/tmp/primes.csv", [:write, :utf8])
  #   File.write!("test.csv", 
  #     get_primes(input)
  #     |> Enum.join("\n")
  #   )
  # end

  def is_prime?(input) do
    primes = get_primes(input, 1)
    Enum.member?(primes, input)
  end

  def get_primes(input, multiply) do
    input * multiply
    |> SieveOfEratosthenes.calculate_primes
  end

  def check_type(prime_number, prime_type) do
    case prime_type do
      :balanced -> PrimeTypes.Balanced.belonging_to?(prime_number)
      :bell -> "Prime type not implemented"
      :chen -> "Prime type not implemented"
      :circular -> "Prime type not implemented"
      :cousin -> PrimeTypes.Cousin.belonging_to?(prime_number)
      :twin -> PrimeTypes.Twin.belonging_to?(prime_number)
      _ -> "Prime type not implemented"
    end
  end

end
