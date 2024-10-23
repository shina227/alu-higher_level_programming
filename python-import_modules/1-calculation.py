#!/usr/bin/python3

from calculator_1 import add, sub, mul, div

# Define the variables
a = 10
b = 5

# Call the functions and print the results
print(f"{a} + {b} = {add(a, b)}")
print(f"{a} - {b} = {sub(a, b)}")
print(f"{a} * {b} = {mul(a, b)}")
print(f"{a} / {b} = {div(a, b)}")
