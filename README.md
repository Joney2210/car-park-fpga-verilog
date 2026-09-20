# Automated Car Park Occupancy System (FPGA / Verilog)

Digital System Design coursework project (with Javen Lim Hao Jun), an FPGA-based 
parking lot information system.

## Overview

An 18-bay parking lot occupancy system split into two sections (A and B, 9 bays each).
Each section tracks occupancy via sensors, shifts the data through a shift register,
counts available spots, and displays the count on a 7-segment display. When both 
sections are full, a combined "FULL" indicator lights up.

## System Design

- 18 parking sensors (1 = occupied, 0 = available), split into left (1-9) and right (10-18) sections
- Each section: Shift Register -> Counter -> 7-Segment Decoder -> 7-Segment Display (available spots)
- AND Gate combines both sections' full-status to drive a shared "FULL" display

## Project Structure

- `Final_v3.v`, `Final_v2.v`, the main integrated project (latest and prior version)
- `FSM_v1.v`, finite state machine logic
- `LimCount.v`, spot counter logic
- `sevenD.v`, seven-segment display decoder/driver
- `clkdiv.v`, `fourbitCounter.v`, `ShiftReg.v`, supporting building-block modules

## Tech Stack

Verilog, FPGA (Intel Quartus)

## My Role

Collaborated with Javen Lim Hao Jun to design and implement the digital system,
including the shift register, counter, and 7-segment display logic, and to 
deploy/test it on the FPGA board.