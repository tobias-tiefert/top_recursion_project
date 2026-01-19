def merge_sort(arr)
  output = []
  if arr.length > 1
    left_arr = merge_sort(arr[0..arr.length/2 - 1])
    right_arr = merge_sort(arr[(arr.length/2 )..arr.length])
    output = merge_arrays(left_arr, right_arr)
  else
    output = arr
  end
  output
end


def merge_arrays(arr1, arr2)
  output = []
  while arr1.length > 0 && arr2.length > 0
    output << (arr1[0] < arr2[0] ? arr1 : arr2).shift # the return value of shift is the first item so it both enters the first item into output and removes it from the original array
  end
  output += arr1
  output += arr2
  output
end

puts merge_sort([2, 55, 3 ,21,4181,377,0,1597,987,13,5,233,1,8,89,2584,610,1,144,34])