def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  new_array = []
  row_index = 0
    while row_index < src.count do
      element_index = 0
        while element_index < src[row_index].count do
          first_ingredient = src[row_index][element_index]
          element_index += 1
          second_ingredient = src[row_index][element_index]
          new_array << "I love #{first_ingredient} and #{second_ingredient} on my pizza"
          element_index += 1
        end
        row_index += 1
     end
  return new_array
end


def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    inner_results = []
      while element_index < src[row_index].count do
        first_num = src[row_index][element_index]
        element_index += 1
        second_num = src[row_index][element_index]
        if first_num > second_num
          inner_results << first_num
        else
          inner_results << second_num
        end
        element_index += 1
      end
       outer_results << inner_results[0]
       row_index += 1
  end
  return outer_results
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  row_index = 0
  while row_index < guessing_game_grid.count do
    element_index = 0
      while element_index < guessing_game_grid[row_index].count do
        total += guessing_game_grid[row_index][element_index]
        element_index += 1
      end
      row_index += 1
    end
  return total
end
