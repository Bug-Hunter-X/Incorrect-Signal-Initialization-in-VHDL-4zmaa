# Incorrect Signal Initialization in VHDL

This repository demonstrates a common error in VHDL code: incorrect initialization of a signal.  The example code initializes a signal with an invalid value, which can lead to unpredictable behavior during simulation and synthesis.

## The Bug
The provided VHDL code contains a signal `temp` initialized to `x"00"`.  This may not be the intended initialization, potentially leading to incorrect values during the execution of the process. For example, if you intend for the signal to be initialized to all 0s, then the appropriate initialization value is `"00000000"` or `(others => '0')`.

## The Solution
The solution demonstrates the correct way to initialize the `temp` signal in VHDL, addressing the potential issues caused by the original incorrect initialization.

## How to use
1. Clone this repository.
2. Use a VHDL simulator (like ModelSim or GHDL) to simulate both the bug and the solution.
3. Observe the differences in behavior caused by the incorrect initialization.