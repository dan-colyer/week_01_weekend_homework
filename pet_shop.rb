def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


# Test 3 & 4
def add_or_remove_cash(pet_shop, cash_amount)
  pet_shop[:admin][:total_cash] += cash_amount
  return pet_shop[:admin][:total_cash]
end


# Test 5
def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end


# Test 6
def increase_pets_sold(pet_shop, amount_sold)
  pet_shop[:admin][:pets_sold] += amount_sold
  return pet_shop[:admin][:pets_sold]
end


# Test 7
def stock_count(pet_shop)
  return pet_shop[:pets].count
end


# Test 8
def pets_by_breed(pet_shop, input_breed)
  pets_array = []

  for pet in pet_shop[:pets]
    if (pet[:breed] == input_breed)
      pets_array << pet
    end
  end

  return pets_array

end
