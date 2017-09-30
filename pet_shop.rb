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


# Test 13
def customer_pet_count(input_cust)
  return input_cust[:pets].count
end


# Test 14
def add_pet_to_customer(input_cust, new_pet)
  input_cust[:pets] << new_pet
  input_cust[:pets].count
end


# Test 15 & 16
def customer_can_afford_pet(input_cust, new_pet)
    return (input_cust[:cash] < new_pet[:price]) ? false : true
end


# # Test 17 & 18
# def sell_pet_to_customer(pet_shop, pet, input_cust)
#   input_cust[:pets] << pet #is this right?
#   input_cust[:pets].count
#
#   pet_shop[:admin][:pets_sold] += input_cust[:pets].count
#
#   pet_shop[:admin][:total_cash] += pet[:price] #Why does this work for 17?
#
# end

# Test 17 & 18 & 19 **** WHY DOES THIS WORK? ****
def sell_pet_to_customer(pet_shop, pet, input_cust)

  for stock in pet_shop[:pets]
    if (stock == pet) && (((input_cust[:cash] < stock[:price]) ? false : true) == true)
      input_cust[:pets] << pet
      input_cust[:pets].count
      pet_shop[:admin][:pets_sold] += input_cust[:pets].count
    end
  end
  if (input_cust[:pets].count == 0)
    pet_shop[:admin][:total_cash]
  else
    pet_shop[:admin][:total_cash] += pet[:price]
  end
end
