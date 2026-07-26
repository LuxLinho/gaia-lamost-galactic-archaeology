# Project II — Orbital Dynamics
## Milestone 4: Distance / Parallax Recovery for Angular Momentum Analysis

## Objective

Project II Milestone 3 identified that the readiness-aware orbital diagnostics candidate table preserved useful velocity-space diagnostics but did not yet carry explicit parallax or distance information for the 27 Project II candidates.

This milestone checks whether the missing distance/parallax information can be recovered from existing processed Gaia–LAMOST larger feature or candidate tables, then writes a distance-recovered candidate table for later angular-momentum analysis.

## Inputs

- Candidate table: `data/processed/project_ii_orbital_diagnostics_candidates.csv`
- Recovery source selected by notebook: `gaia_lamost_larger_velocity_features.csv`
- Merge key: `source_id`

## Outputs

- `notebooks/15_project_ii_distance_parallax_recovery.ipynb`
- `data/processed/project_ii_distance_recovered_candidates.csv`
- `data/processed/project_ii_distance_recovery_summary.csv`
- `report/project_ii_milestone4_distance_parallax_recovery.md`

## Recovery summary

- Number of Project II candidates: 27
- Candidates with recovered parallax: 0
- Candidates with positive parallax: 0
- Candidates with inverse-parallax distance estimate: 0
- Candidates passing basic angular-momentum readiness check: 0

## Distance quality flags

- missing_parallax: 27

## Notes and limitations

The recovered distance is currently an exploratory inverse-parallax estimate:

`distance_pc = 1000 / parallax_mas`

This is sufficient for Project II readiness and pipeline preparation, but it should not be treated as a final publication-grade distance model. Later orbit and angular-momentum analysis should document the adopted Galactic frame, solar parameters, parallax zero-point handling, and whether an external distance catalog or Bayesian distance estimate is used.

## Next step

Project II Milestone 5 can use `project_ii_distance_recovered_candidates.csv` to compute angular-momentum diagnostics such as `Lz`, `Lperp`, and `Ltot`, provided the recovered rows include sky position, proper motions, radial velocity, and a usable distance proxy.
