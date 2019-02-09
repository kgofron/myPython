#!/bin/ruby

require 'json'
require 'stringio'



# Complete the findNumber function below.
def findNumber(arr, k)
    find = ""
    i = 0
    while i < arr.length
        if arr[i] == k
            find = "YES"
        else   
            find = "NO"
        end

        i += 1
    end

    return find
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')