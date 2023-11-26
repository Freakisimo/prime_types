defmodule PrimeTypes do
  defstruct prime_number: nil, class: %{}
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

  def new(prime_number), do: %PrimeTypes{prime_number: prime_number}

  def which_types(input) do
    primes = get_primes(input)
    case Enum.member?(primes, input) do
      false -> "The provide number isn't prime number"
      true -> PrimeTypes.check_prime_class(input, primes)
    end
  end

  def get_primes(input) do
    input * 2
    |> SieveOfEratosthenes.calculate_primes
  end

  def check_prime_class(prime_number, primes) do
    types = PrimeTypes.new(prime_number)
    classes = types.class
      |> Map.put(:balanced, PrimeTypes.Balanced.belonging_to?(prime_number, primes))
      |> Map.put(:cousin, PrimeTypes.Cousin.belonging_to?(prime_number, primes))
      |> Map.put(:fermat, PrimeTypes.Fermat.belonging_to?(prime_number))
      |> Map.put(:twin, PrimeTypes.Twin.belonging_to?(prime_number, primes))
      |> Map.put(:chen, PrimeTypes.Chen.belonging_to?(prime_number, primes))
    put_in(types.class, classes)
  end

end
