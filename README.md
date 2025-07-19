# 🚦 Traffic Light Controller using FSM – Verilog

This is a simple digital design project that implements a **Traffic Light Controller** using a **Finite State Machine (FSM)** in Verilog HDL.

## 🧠 Project Overview

- Designed using **Moore FSM** concept  
- Simulated with **Icarus Verilog**  
- Waveform analyzed using **GTKWave**

## 📁 Files Included

| File Name               | Description                        |
|------------------------|------------------------------------|
| `traffic_light_fsm.v`  | Verilog code for FSM controller    |
| `testbench.v`          | Testbench to simulate FSM          |
| `traffic.vcd`          | Simulation waveform output         |
| `Traffic_Light_Controller_FSM_Report.pdf` | Project report with circuit, waveform, explanation |

## 🧪 Simulation Tools

- **Icarus Verilog** for compiling and simulation
- **GTKWave** for viewing waveforms

## 📊 Waveform Output

Shows correct sequence of signals:
- Red, Yellow, Green transitions
- Follows proper FSM behavior

## 📖 How to Run

```sh
iverilog -o traffic_out traffic_light_fsm.v testbench.v
vvp traffic_out
gtkwave traffic.vcd
