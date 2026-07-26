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
- Future orbit integration with `galpy`
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
- `data/processed/project_ii_orbit_input_candidates.csv`
- `data/processed/project_ii_orbital_diagnostics_candidates.csv`
- `data/processed/project_ii_distance_recovered_candidates.csv`
- `data/processed/project_ii_angular_momentum_candidates.csv`
- `data/processed/project_ii_angular_momentum_summary.csv`
- `figures/project_ii_angular_momentum_lz_lperp.png`
- `figures/project_ii_angular_momentum_lz_ltot.png`
- `figures/project_ii_angular_momentum_feh_lz.png`
- `report/project_ii_milestone1_orbital_characterization_setup.md`
- `report/project_ii_milestone2_orbit_input_preparation.md`

## Results

Current results include distance-recovered candidate tables and angular-momentum diagnostics for the candidate sample. These diagnostics provide a first view of prograde, retrograde, radial, and high-Lperp orbital behavior.

## Validation and Uncertainty

Current limitations include:

- Distance and parallax availability
- Dependence on recovered or approximate distances
- Lack of full orbit integration for all candidates
- Need for uncertainty propagation

These limitations will be addressed more fully in Project VI.

## Discussion

This project is the current active focus of the repository. The immediate next step is candidate-level orbital-family interpretation using angular momentum, velocity diagnostics, metallicity, and distance provenance.

## Deliverables

- Orbit-input candidate table
- Distance-recovered candidate table
- Angular-momentum candidate table
- Angular-momentum summary table
- Orbital-family interpretation report
- Future Orbital Catalog
