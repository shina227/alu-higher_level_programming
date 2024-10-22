#!/usr/bin/python3
def uppercase(str):
    for c in str:
        # Check if the character is lowercase
        if ord(c) >= 97 and ord(c) <=122:
            # Convert to uppercase by subtracting 32 from its ASCII value
            upper_c = chr(ord(c) - 32)
        else:
            upper_c = c
        print("{}".format(upper_c), end="")
    print("")  # Print a newline at the end
