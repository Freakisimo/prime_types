defmodule PrimeTypes.StoredPrimes do
  @table_name :stored_primes_table

  def start_table do
    :ets.new(@table_name, [:set, :public, :named_table])
  end

  def save_result(table, integer_value, integer_tuple) do
    :ets.insert(table, {integer_value, integer_tuple})
  end

  def clear_table(table) do
    :ets.delete_all_objects(table)
  end

  def get_result(table, integer_value) do
    :ets.lookup(table, integer_value)
  end
end