# Project II — Orbital-Family Interpretation

## Scientific Question

What orbital families are suggested by the current angular-momentum diagnostics of the Gaia-LAMOST candidate sample?

## Background and Motivation

This report is part of **Project II — Orbital Dynamics** in the research program *Galactic Archaeology with Gaia DR3 & LAMOST DR9*.

The goal is to move beyond simple velocity-space candidate selection and begin interpreting the candidate stars in terms of orbital families. The current analysis uses angular momentum, velocity diagnostics, metallicity flags, and distance provenance to provide a first candidate-level orbital-family interpretation.

This is a diagnostic interpretation, not yet a final dynamical classification. Full orbit integration, action-space analysis, uncertainty propagation, and literature comparison will be required in later stages.

## Data and Methods

Input file:

- `data/processed/project_ii_angular_momentum_candidates.csv`

Output files:

- `data/processed/project_ii_orbital_family_candidates.csv`
- `data/processed/project_ii_orbital_family_summary.csv`

The interpretation uses the following diagnostics:

- Lx, Ly, and Lz angular momentum
- Lperp and Ltotal
- Lperp / Ltotal
- Lz / Ltotal
- Rotation class
- Inclination-proxy class
- Metallicity flag
- High-velocity flags
- Distance recovery source and distance-quality flag

The classification is heuristic and evidence-based. It groups candidates into orbital-family interpretation labels such as retrograde halo-like, radial halo-like, prograde disk-like, and prograde hot or metal-poor candidates.

## Results

Total number of candidates:

- 27

Key diagnostic counts:

- Retrograde candidates: 0
- Halo-like angular-momentum proxy candidates: 0
- Disk-like angular-momentum proxy candidates: 0
- High-velocity candidates: 12
- Metal-poor candidates: 13

## Orbital-Family Counts

| orbital_family_interpretation             |   n |
|:------------------------------------------|----:|
| radial_metal_poor_halo_like               |  10 |
| retrograde_low_inclination_halo_like      |   9 |
| prograde_hot_or_metal_poor_candidate      |   3 |
| retrograde_moderate_inclination_halo_like |   2 |
| retrograde_high_inclination_halo_like     |   1 |
| prograde_high_inclination_halo_like       |   1 |
| low_Lz_or_radial_candidate                |   1 |

## Rotation-Class Counts

| rotation_class   |   n |
|:-----------------|----:|
| retrograde       |  12 |
| low_Lz_or_radial |  11 |
| prograde         |   4 |

## Inclination-Proxy Counts

| inclination_proxy_class   |   n |
|:--------------------------|----:|
| low_Lperp                 |  19 |
| moderate_Lperp            |   6 |
| high_Lperp                |   2 |

## Distance-Provenance Counts

| distance_recovery_source                 |   n |
|:-----------------------------------------|----:|
| gaia_lamost_larger_velocity_features.csv |  27 |

## Orbital-Family Summary

| orbital_family_interpretation             | rotation_class   | inclination_proxy_class   |   n |   feh_median |   feh_min |   feh_max |   vtan_median |   vtot_median |   Lz_median |   Lperp_median |   Ltot_median |
|:------------------------------------------|:-----------------|:--------------------------|----:|-------------:|----------:|----------:|--------------:|--------------:|------------:|---------------:|--------------:|
| retrograde_low_inclination_halo_like      | retrograde       | low_Lperp                 |   9 |      -0.768  |    -1.317 |    -0.543 |       114.305 |           nan |  -1125.14   |        540.73  |      1184.74  |
| radial_metal_poor_halo_like               | low_Lz_or_radial | low_Lperp                 |   6 |      -1.1515 |    -2.108 |    -0.534 |       202.885 |           nan |    101.215  |        200.292 |       353.297 |
| radial_metal_poor_halo_like               | low_Lz_or_radial | moderate_Lperp            |   4 |      -1.126  |    -1.539 |    -0.583 |       237.792 |           nan |   -243.806  |        962.639 |      1030.25  |
| prograde_hot_or_metal_poor_candidate      | prograde         | low_Lperp                 |   3 |      -1.679  |    -1.723 |    -1.116 |       303.912 |           nan |    770.758  |        385.255 |       829.578 |
| retrograde_moderate_inclination_halo_like | retrograde       | moderate_Lperp            |   2 |      -0.76   |    -0.951 |    -0.569 |       171.779 |           nan |   -895.579  |        963.357 |      1315.68  |
| low_Lz_or_radial_candidate                | low_Lz_or_radial | low_Lperp                 |   1 |      -0.796  |    -0.796 |    -0.796 |       141.127 |           nan |    -54.9331 |        150.91  |       160.597 |
| prograde_high_inclination_halo_like       | prograde         | high_Lperp                |   1 |      -1.472  |    -1.472 |    -1.472 |       426.686 |           nan |   2417.3    |       1650.51  |      2927.03  |
| retrograde_high_inclination_halo_like     | retrograde       | high_Lperp                |   1 |      -2.213  |    -2.213 |    -2.213 |       413.706 |           nan |   -961.146  |       3531.46  |      3659.92  |

## Interpretation

The candidate sample shows a mixture of retrograde, low-Lz or radial, and prograde orbital behavior. Retrograde candidates are particularly important because negative Lz values indicate motion opposite to the adopted Galactic rotation convention. These stars are often useful tracers for halo-like or accreted components, although retrograde motion alone is not sufficient for a definitive population assignment.

Low-Lz or radial candidates are also scientifically interesting because they may trace radial or high-eccentricity orbital behavior. Such stars can overlap with halo-like populations or merger-related debris, but this requires confirmation through full orbit integration and comparison with known structures.

Prograde candidates are not automatically ordinary disk stars. Some prograde stars can still be dynamically hot, metal-poor, or high-inclination. These cases remain useful for later disk-halo separation and possible heated-disk or splash-like interpretation.

The inclination proxy based on Lperp provides an additional way to distinguish low-inclination, moderate-inclination, and high-inclination angular-momentum behavior. High-Lperp stars may be especially relevant for halo-like or polar-orbit candidates.

## Validation and Uncertainty

This interpretation is limited by several factors:

- The current analysis uses angular-momentum diagnostics rather than full orbit integration.
- Some distances rely on recovered parallax-based estimates.
- The classification does not yet propagate Gaia astrometric errors.
- The interpretation has not yet been compared against literature-defined regions for Gaia-Sausage-Enceladus, Helmi Stream, Sequoia, Nyx, Splash, or other structures.
- The current labels should be treated as candidate-level interpretation tags, not final population labels.

These limitations will be addressed in later Project II and Project VI work.

## Deliverables

This step produces:

- Candidate-level orbital-family interpretation table
- Orbital-family summary table
- Research report for Project II orbital-family interpretation

## Next Steps

The next scientific steps are:

1. Add full orbit integration with `galpy`.
2. Compute eccentricity, apocenter, pericenter, Zmax, guiding radius, and orbital energy.
3. Construct Energy-Lz and action-space diagrams.
4. Compare candidates with known Galactic merger structures.
5. Propagate distance and astrometric uncertainties with Monte Carlo sampling.
