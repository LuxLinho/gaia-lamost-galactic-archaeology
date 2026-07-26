# Project II — Orbital Dynamics
## Milestone 5: Angular Momentum Diagnostics

## Purpose

This milestone extends the Project II distance-recovered candidate sample into Galactocentric angular-momentum space.

The input file is:

- `data/processed/project_ii_distance_recovered_candidates.csv`

The main goal is to compute and diagnose:

- `Lz_kpc_kms`
- `Lperp_kpc_kms`
- `Ltot_kpc_kms`

These diagnostics prepare the candidate sample for later orbital-family interpretation.

## Input sample

The angular-momentum calculation is based on the Project II distance-recovered candidate table.

The final executed notebook used the recovered/Gaia-backed columns with non-null astrometric and velocity information:

- `ra_gaia`
- `dec_gaia`
- `pmra_recovered`
- `pmdec_recovered`
- `rv`
- `distance_pc`

All 27 distance-recovered candidates passed the angular-momentum input-readiness filter.

## Method

The notebook `notebooks/16_project_ii_angular_momentum_diagnostics.ipynb` loads the distance-recovered candidate table and detects the required astrometric, radial-velocity, metallicity, and distance columns.

Because the milestone-4 table preserves some upstream placeholder columns that are entirely empty, the column-detection logic prefers non-null recovered columns over empty original columns. This prevents selecting columns such as empty `ra`, `dec`, `pmra`, or `radial_velocity` fields when recovered equivalents are available.

The selected phase-space inputs are transformed into the Astropy Galactocentric frame to obtain:

- `galcen_x_kpc`
- `galcen_y_kpc`
- `galcen_z_kpc`
- `galcen_vx_kms`
- `galcen_vy_kms`
- `galcen_vz_kms`

Angular momentum per unit mass is computed as:

    L = r × v

with output units of `kpc km s^-1`.

The components are:

    Lx = y * vz - z * vy
    Ly = z * vx - x * vz
    Lz = x * vy - y * vx

The derived magnitudes are:

    Lperp = sqrt(Lx^2 + Ly^2)
    Ltot  = sqrt(Lx^2 + Ly^2 + Lz^2)

## Outputs

Candidate-level output:

- `data/processed/project_ii_angular_momentum_candidates.csv`

Summary output:

- `data/processed/project_ii_angular_momentum_summary.csv`

Figures:

- `figures/project_ii_angular_momentum_lz_lperp.png`
- `figures/project_ii_angular_momentum_lz_ltot.png`
- `figures/project_ii_angular_momentum_feh_lz.png`

## Result summary

The final angular-momentum diagnostic table contains 27 candidates.

Summary values from the executed notebook:

- median `Lz_kpc_kms`: approximately `-320.51`
- median `Lperp_kpc_kms`: approximately `556.69`
- median `Ltot_kpc_kms`: approximately `1129.90`
- minimum `Lz_kpc_kms`: approximately `-3824.07`
- maximum `Lz_kpc_kms`: approximately `2417.30`

Simple diagnostic class counts:

- retrograde / low_Lperp: 9
- low_Lz_or_radial / low_Lperp: 7
- low_Lz_or_radial / moderate_Lperp: 4
- prograde / low_Lperp: 3
- retrograde / moderate_Lperp: 2
- prograde / high_Lperp: 1
- retrograde / high_Lperp: 1

## Diagnostic interpretation

The `Lz` diagnostic is useful for separating stars by their sense of Galactic rotation.

Broadly:

- positive `Lz` indicates one rotational sense under the adopted Galactocentric convention
- negative `Lz` indicates the opposite rotational sense
- low absolute `Lz` can indicate radial or weakly rotating behavior

The `Lperp` diagnostic traces the angular-momentum component perpendicular to the Galactic rotation axis. Stars with substantial `Lperp` may have more inclined or halo-like orbital behavior.

The `Ltot` diagnostic gives the total angular-momentum magnitude and helps distinguish low-angular-momentum radial candidates from higher-angular-momentum rotating candidates.

## Classification flags

The milestone adds two simple interpretive labels:

- `rotation_class`
- `inclination_proxy_class`

These labels are intentionally conservative and should not be treated as final dynamical classes. They are used only as diagnostic aids for later orbit-family interpretation.

## Scientific caution

This milestone does not perform full orbit integration.

The results depend on:

- recovered distance quality
- recovered proper-motion quality
- radial-velocity quality
- the adopted Galactocentric frame parameters
- the coordinate convention for `Lz`

The angular-momentum diagnostics should therefore be interpreted together with metallicity, velocity-space evidence, and later orbital calculations.

## Next step

The next milestone should use the angular-momentum outputs to prepare a candidate-level orbital-family interpretation, combining:

- velocity-space diagnostics
- metallicity
- `Lz`
- `Lperp`
- `Ltot`
- distance-recovery provenance
