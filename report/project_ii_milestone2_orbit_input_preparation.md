# Project II — Orbital Dynamics
## Milestone 2: Orbit Input Preparation

## Goal

This milestone prepares the candidate-level input table required for downstream orbital characterization.
It does not perform orbit integration yet. Instead, it verifies whether the candidate sample contains the astrometric, radial-velocity, and Galactocentric velocity fields needed for later orbit analysis.

Project II Milestone 1 was a planning/setup milestone. Therefore, this milestone uses the Project V cross-method candidate summary as the main candidate-level data input.

## Input table

- Project V cross-method candidate summary: `project_v_candidate_cross_method_summary.csv`

## Output table

- `project_ii_orbit_input_candidates.csv`

## Orbit-readiness summary

- Number of candidates: 27
- Candidates with 6D astrometric input: 0
- Candidates with Galactocentric velocity input: 0
- Candidates ready for orbit input: 0
- Orbit-input readiness fraction: 0.000

## Required fields checked

- `ra`: missing 27 / 27 (1.000)
- `dec`: missing 27 / 27 (1.000)
- `parallax`: missing 27 / 27 (1.000)
- `pmra`: missing 27 / 27 (1.000)
- `pmdec`: missing 27 / 27 (1.000)
- `radial_velocity`: missing 27 / 27 (1.000)
- `galcen_vx`: missing 27 / 27 (1.000)
- `galcen_vy`: missing 27 / 27 (1.000)
- `galcen_vz`: missing 27 / 27 (1.000)

## Interpretation

The resulting orbit-input table provides a controlled bridge between the cross-method candidate selection stage and the later orbital characterization stage.
Candidates marked as `orbit_input_ready = True` contain the minimum astrometric, radial-velocity, and Galactocentric velocity information required for the next milestone.

If some candidates are not orbit-input ready, they remain useful for photometric, chemical, or kinematic context, but should not be used for full orbit integration without additional data completion or quality checks.

## Next step

Project II Milestone 3 will use this prepared table to compute orbital diagnostics, such as angular-momentum-related quantities, orbital energy proxies, or full orbit integrations depending on package availability and data quality.
