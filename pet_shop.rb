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


# Test 8 & 9
def pets_by_breed(pet_shop, input_breed)
  pets_array = []

  for pet in pet_shop[:pets]
    if (pet[:breed] == input_breed)
      pets_array << pet
    end
  end

  return pets_array

end


# Test 10 & 11
def find_pet_by_name(pet_shop, input_name)
  for pet in pet_shop[:pets]
    if (pet[:name] == input_name)
      return pet
    end
  end

      return nil

end

# Test 11
def remove_pet_by_name(pet_shop, input_name)
  for pet in pet_shop[:pets]
    if (pet[:name]  == input_name)
      pet_shop[:pets].delete(pet)
    end
  end
end


# Test 12
def add_pet_to_stock(pet_shop, input_name)
  pet_shop[:pets] << { name: input_name }
end
