# 8-Bit Adder

8-Bit Adder is my interpretation of a simple binary adder and subtractor. It features a 1970s-style panel interface mixed with a modern flat aesthetic, with toggle buttons that "light up" when activated, and has four different operations: addition, subtraction, logical AND and logical XOR.

# How It Works

The panel interface is seperated into four areas: output, input A, input B, and function. The selected function is indicated by an activated toggle in the function section, and is always active. You do not need to tap the function in order to apply it, the output area will update in real-time. The two input sections contain eight toggle buttons each for entering two 8-bit binary numbers. The first button in input A toggles the most significant digit in your first number, while the last button toggles the least significant digit. Thus, in order to enter the number 77d or 001001101b, you would activate the 64, 8, 4, and 1 toggles.

# Why

This was my first app, so I needed an idea for experimenting, a sort of "Hello World". At the time, I was building a hardware 4-bit adder using discrete logical gates on perfboard, and realised that the circuit could very easily be replicated in code. Since jumping from 4-bit to 8-bit was just a matter of increasing the loop iterations, the 8-Bit Adder was born.

# Try It Out

You should be able to sideload the app on an iPhone 6 running iOS 9.0+ by building it with Xcode 7. If you attempt this, please let me know what you think. Any feedback will be valuable.