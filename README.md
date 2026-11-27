# 512-bit SRAM

A transistor-level **512-bit SRAM**, organized as a **16 × 32 bitcell array** with a **64-word × 8-bit interface**, designed using FreePDK45. The system combines a physical SRAM core with schematic address/data registers, row and column decoders, write circuitry, and sense amplifiers.

This team project showcase focuses on layout integration, DRC/LVS verification, parasitic extraction, schematic timing improvements, and mixed schematic/extracted system validation. The physical core includes the bitcells, precharge devices, column transmission gates, and final wordline inverters. Cadence Virtuoso, Calibre, and HSPICE were used for design and verification.

## System overview

![SRAM system architecture](images/overall_system_diagram.png)

## Integrated layout

The physical core is DRC-clean and LVS-correct. Its footprint is **777.42 µm²**, with **57.72% bitcell area efficiency**; the schematic-only peripherals are excluded from this area.

![Integrated SRAM layout](images/layout_overview.png)

## Nominal simulation results

The extracted core and schematic peripherals pass **256 operations across all 64 addresses and 512 cells**, with **zero failures in 13,568 checks**. Tests use both checkerboard polarities, immediate write/readback, and final cell-retention checks across eight independent two-row cases.

Conditions: **0.8 V, 25 °C, 1 ns clock period, 50 ps source edges**. Sense outputs have 10 fF explicit load plus register input load; registered outputs have 10 fF load.

| Measurement | Extracted system |
|---|---:|
| Clock-to-column selection | 221 ps |
| Clock-to-far-end wordline rise, row 0 | 216 ps |
| Clock-to-valid sense data | 765 ps |
| Output register clock-to-Q | 85.6 ps |
| Representative falling cell node to VDD/2 during write | 450 ps |
| Average main-supply power, representative sequence | 381 µW |

The output register captures on the next rising edge: registered read latency is approximately **1.086 ns**, while the tested clock period is **1 ns**. These are nominal simulation results, not fabricated-silicon measurements.

## Read and write waveforms

`q` and `qb` show one representative storage cell; `out` is the sense output and `reg` is the registered read output. Other controls and selected data lines are shown alongside the clock.

![Read and write cycles](images/read_write_cycles.png)

An opposite-state write, immediate read, and subsequent output-register capture:

![Detailed write and registered readback](images/write_read_detail.png)

## Timing improvements

Tapered column-select buffers and resized decoder stages reduced the representative column transition from **979 ps to 221 ps**, preventing the previous column from remaining selected during a later write. Register sizing reduced observed clock-to-Q from **117 ps to 85.6 ps**.

![Column selection before and after schematic fixes](images/column_before_after.png)

![Measured output register clock-to-Q](images/register_clock_Q.png)

## Scope and remaining qualification

Clock and control waveforms are external testbench sources. The functional pass does not establish PVT, mismatch, or static noise-margin qualification. A controlled 500 ps write-low sweep succeeds at a 0.200 V data-line floor and fails at 0.225 V; this does not demonstrate the >30% VDD cell write-margin target. Isolated selected-data-line recovery to 95% VDD is approximately 470 ps, longer than the normal observed precharge interval, so full-rail precharge is not claimed.

## Design and simulation files

| Directory | Contents |
|---|---|
| `library/ece6130_library/` | Updated editable Cadence library: **109 OA views**, including `SRAM_SYSTEM`, buffered column decoder, registers, and physical core |
| `netlists/` | Full schematic system, native system bound to PEX, and schematic core netlists |
| `pex/` | Extracted core netlist and both required RC sidecars |
| `simulation/` | **37 cases**: representative PEX/schematic runs, native-top smoke test, eight coverage cases, register tests, write-limit and precharge experiments |
| `results/` | Recorded summaries, raw `.mt0` measurement tables, expected checks, and waveform CSVs |
| `scripts/` | Cadence setup helper |
| `images/` | Selected layout, architecture and waveform figures |

### Open the Cadence library

Use your own licensed Cadence environment and installed FreePDK45 libraries. From the repository root:

```sh
python3 scripts/configure_cadence.py --pdk /path/to/FreePDK45 --cadence-root /path/to/cadence/ic
virtuoso
```

The helper creates a local, ignored `cds.lib` and refuses to overwrite an existing one. Open **`ece6130_library / SRAM_SYSTEM / schematic`** for the registered system, or **`SRAM_INTEGRATED / layout`** for the physical core. Legacy `TOP` and `SRAM_CORE` views are reference designs. `SRAM_SYSTEM` includes the input/output registers and final physical wordline inverters exactly once. Use the actual `.SUBCKT` port order; the native system's 32 ports are listed in `results/system_port_order.json`.

### Check the recorded results

Python 3.9+ is sufficient; these checks do not require Cadence or HSPICE:

```sh
python3 simulation/run.py --check
python3 simulation/verify_results.py
```

The verifier independently checks the measurement tables against expected read/write/retention outcomes, the complete address set, register timing schedules, write-limit sweep outcomes, and all 109 OA checksums. The representative and coverage tests check register outputs at **150 ps after capture**. Intentional failing write-limit sweep points are retained as characterization data.

### Run a simulation

Provide your own HSPICE installation and authorized model cards: `NMOS_VTL.inc`, `PMOS_VTL.inc`, `NMOS_VTG.inc`, and `PMOS_VTG.inc`. The publication does **not** contain model cards or verification rule decks.

```sh
python3 simulation/run.py --list
python3 simulation/run.py --case native-smoke --models-dir /path/to/model/cards --hspice /path/to/hspice --output-dir /path/to/scratch/sram-smoke
python3 simulation/verify_results.py --case native-smoke --mt0 /path/to/scratch/sram-smoke/sim.mt0
```

Choose `representative-pex`, `representative-schematic`, or `coverage-rows00_01` through `coverage-rows14_15` for longer functional runs. `--prepare-only` stages inputs without launching HSPICE. Output directories must be new; recorded results are never overwritten. All project include paths are repository-relative; the runner resolves them and the `@MODELS@` placeholders into a separate runtime input tree. Only include paths were changed for publication; circuit, parasitic and stimulus statements are unchanged. The source validation results were generated in the original tool environment; publication checks validate packaging and recorded measurements, rather than claiming a new simulator rerun.

The main PEX file and its two sidecars must remain together. The system PEX netlist explicitly maps the physical core's extracted pin order by name. Bias supplies, 50 ps controls, 1 ns clock and loads are specified in each test deck. `COL_EN` is held high in the functional tests; clock, `PRE_B`, `WE/WEB`, `SAE` and `WL_EN` are external testbench signals. Both VTL and VTG model families are required.

PDK/device libraries, transistor model cards, Cadence/Calibre software, rule decks, license configuration, raw binary waveform files and course documents are excluded. Native design views and project-generated extracted netlists are included; no license for third-party tools or PDK assets is implied.
