defmodule PrimeTypes.Fermat do
  def belonging_to?(prime_number) do
    
    case square_root_steps(prime_number - 1, 0) do
      {:ok, _}    -> true
      {:error, _} -> false
    end

  end

  defp square_root_steps(number, steps) do
    IO.inspect number
    case rem(number, 2) do
      0 -> square_root_steps(trunc(number / 2), steps + 1)
      _ -> {:error, 0}
    end
  end

  defp square_root_steps(1, steps), do: {:ok, steps}

end