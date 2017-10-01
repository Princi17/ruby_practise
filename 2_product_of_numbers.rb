def get_products_of_all_ints_except_at_index(int_array)
  # int_array = [3, 5, 7, 3, 8]
  if int_array.length < 2
    raise IndexError, 'Getting the product of numbers at other indices requires at least 2 numbers'
  end

  products_of_all_ints_except_at_index = []
  product_so_far = 1
  i = 0
  while i < int_array.length
    products_of_all_ints_except_at_index[i] = product_so_far
    product_so_far *= int_array[i]
    i += 1
  end
  # output = [1, 3, 15, 105, 315]

  product_so_far = 1
  i = int_array.length - 1
  while i >= 0
    products_of_all_ints_except_at_index[i] *= product_so_far
    product_so_far *= int_array[i]
    i -= 1
  end

  return products_of_all_ints_except_at_index
  # output = [840, 504, 360, 840, 315]
end
