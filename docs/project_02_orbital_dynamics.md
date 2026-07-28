# Project II — Orbital Dynamics

## Scientific Question

What are the orbital properties of the Gaia-LAMOST candidate stars, and do their angular-momentum and velocity-space signatures suggest distinct orbital families?

## Background and Motivation

Velocity-space diagnostics provide an initial view of stellar motion, but Galactic archaeology requires deeper orbital information. This project extends the candidate catalogue with angular momentum, orbital parameters, and eventually full orbit integration in a Galactic potential.

## Data and Methods

Core components:

- Orbit-input preparation
- Distance recovery and provenance tracking
- Velocity-space orbital diagnostics
- Angular-momentum diagnostics
- Orbit-family interpretation
- Baseline orbit integration with `galpy`
- Future action-space and energy-space analysis

Planned orbital quantities include:

- Orbit shape
- Eccentricity
- Apocenter
- Pericenter
- Zmax
- Guiding radius
- Orbital energy
- Lx
- Ly
- Lz
- Lperp
- Ltotal
- Actions
- Integrals of motion

## Existing Repository Outputs

Relevant existing work includes:

- `notebooks/13_project_ii_orbit_input_preparation.ipynb`
- `notebooks/14_project_ii_orbital_diagnostics_preparation.ipynb`
- `notebooks/15_project_ii_distance_parallax_recovery.ipynb`
- `notebooks/16_project_ii_angular_momentum_diagnostics.ipynb`
- `notebooks/17_project_ii_orbital_family_interpretation.ipynb`
- `notebooks/18_project_ii_galpy_orbit_integration_preparation.ipynb`
- `notebooks/19_project_ii_galpy_baseline_orbit_integration.ipynb`
- `notebooks/20_project_ii_orbit_angular_momentum_consistency.ipynb`
- `notebooks/30_project_ii_additional_gmm_member_orbital_followup.ipynb`
- `data/processed/project_ii_orbit_input_candidates.csv`
- `data/processed/project_ii_orbital_diagnostics_candidates.csv`
- `data/processed/project_ii_distance_recovered_candidates.csv`
- `data/processed/project_ii_angular_momentum_candidates.csv`
- `data/processed/project_ii_angular_momentum_summary.csv`
- `data/processed/project_ii_orbital_family_candidates.csv`
- `data/processed/project_ii_galpy_orbit_candidates.csv`
- `data/processed/project_ii_orbit_angular_momentum_consistency.csv`
- `data/processed/project_ii_additional_gmm_member_orbits.csv`
- `data/processed/project_ii_additional_gmm_member_input_audit.csv`
- `data/processed/project_ii_additional_gmm_member_evidence_assessment.csv`
- `figures/project_ii_angular_momentum_lz_lperp.png`
- `figures/project_ii_angular_momentum_lz_ltot.png`
- `figures/project_ii_angular_momentum_feh_lz.png`
- `report/project_ii_milestone1_orbital_characterization_setup.md`
- `report/project_ii_milestone2_orbit_input_preparation.md`
- `report/project_ii_galpy_baseline_orbit_integration.md`
- `report/project_ii_orbit_angular_momentum_consistency.md`
- `report/project_ii_additional_gmm_member_orbital_followup.md`

## Results

Current results include distance-recovered candidate tables, angular-momentum
diagnostics, orbital-family interpretation labels, baseline `galpy` orbit
integration, and orbit-angular-momentum consistency checks for the known
candidate sample. These diagnostics provide a first view of prograde, retrograde,
radial, and high-Lperp orbital behavior.

Project II has also completed the first orbital follow-up of the 8 additional
members of the Project V GMM reference component. All 8 have usable internal
6D inputs, angular-momentum diagnostics, and baseline `galpy` orbit metrics. Under
the recovered-core angular-momentum distance rule, all 8 are classified as
orbitally consistent, strengthening their follow-up priority without establishing
common physical origin.

## Validation and Uncertainty

Current limitations include:

- Distance and parallax availability
- Dependence on recovered or approximate distances
- Lack of full orbit integration for all candidates
- Need for uncertainty propagation

These limitations will be addressed more fully in Project VI.

## Project V Handoff

Project V final synthesis identified 8 additional GMM members that share the
locked Project V 32-star reference component. Project II has now completed a
first orbital follow-up for those 8 stars and should still treat them as follow-up
targets only, not confirmed physical members.

Recommended next work:

- recover or derive reliable distances, positions, proper motions, and radial
  velocities for the 8 additional GMM members where feasible;
- compute or validate `Lz`, `Lperp`, `Ltot`, eccentricity, `Zmax`, and related
  orbit diagnostics when the input data support them;
- compare those diagnostics against the 24 recovered known-candidate core;
- keep the 3 omitted known candidates in the validation set, because omission
  from the Project V GMM component does not invalidate their candidate status.

## Discussion

This project is the current active focus of the repository. The immediate next step is candidate-level orbital-family interpretation using angular momentum, velocity diagnostics, metallicity, and distance provenance.

## Deliverables

- Orbit-input candidate table
- Distance-recovered candidate table
- Angular-momentum candidate table
- Angular-momentum summary table
- Orbital-family interpretation report
- Future Orbital Catalog
