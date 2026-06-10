# 🕒 Synchronous Clock Frequency Dividers

A comprehensive hardware library of synthesizable clock management units designed in Verilog. This repository features robust architectures for clock frequency downscaling, encompassing fixed **Even Integer**, **Odd Integer**, and advanced **Fractional (Half-Integer)** division networks verified for digital system timing.

---

## 📂 Repository Architecture

The workspace isolates synthesizable design files from verification testbenches and visual simulation waveform data:

```text
CLOCK_DIVIDER/
├── divider_by2.v         # Even integer divider (/2)
├── divider_by3.v         # Odd integer divider (/3)
├── divider_by3_half.v    # Fractional half-integer divider (/3.5)
├── divider_by4.v         # Even integer divider (/4)
├── divider_by5.v         # Odd integer divider (/5)
├── divider_by5_half.v    # Fractional half-integer divider (/5.5)
├── divider_by6.v         # Even integer divider (/6)
├── divider_by7.v         # Odd integer divider (/7)
├── divider_by7_half.v    # Fractional half-integer divider (/7.5)
├── divider_by8.v         # Even integer divider (/8)
├── divider_by10.v        # Even integer divider (/10)
├── divider_by12.v        # Even integer divider (/12)
├── divider_byEVEN.v      # Parameterized generic even divider block
├── testbench.v           # Universal Testbench Verification Suite
├── waveform_by2.png      # Verified simulation wave for /2
├── waveform_by3.png      # Verified simulation wave for /3
├── waveform_by3_half.png # Verified simulation wave for /3.5
└── README.md             # Repository Documentation Matrix
```