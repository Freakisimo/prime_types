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
  
  # SieveOfEratosthenes.calculate_primes(1_000_000)
  # |> Enum.map(p, fn x -> Integer.to_string(x,2) end) 
  # |> Enum.filter(fn x -> not String.contains?(x, "0") end) 
  # |> Enum.map(fn x -> Integer.parse(x, 2) |> elem(0) end)

  table = PrimeTypes.Primes.start_table()
  
  def which_types(input, type) do
    primes = get_primes(input)
  end

  def which_types(input) do
    primes = get_primes(input)
  end


  def is_prime?(input, primes) do
    Enum.member?(primes, input)
  end

  def get_primes(input) do
    input ** input
    |> SieveOfEratosthenes.calculate_primes
  end

  def check_type(prime_number, prime_type) do
    case prime_type do
      :balanced -> PrimeTypes.Balanced.belonging_to?(prime_number)
      :chen -> "Prime type not implemented"
      :circular -> "Prime type not implemented"
      :cousin -> PrimeTypes.Cousin.belonging_to?(prime_number)
      :fermat -> PrimeTypes.Fermat.belonging_to?(prime_number)
      :twin -> PrimeTypes.Twin.belonging_to?(prime_number)
      _ -> "Prime type not implemented"
    end
  end

  def binary_primes do
    
  end

end
