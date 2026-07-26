# Project II — Orbital Dynamics
## Milestone 3: Orbital Diagnostics / Angular Momentum Preparation

## 1. Purpose

This milestone prepares orbital diagnostics for the Project II candidate sample. The intended scientific target is to move from orbit-input candidates toward angular-momentum and orbital-classification analysis.

During this milestone, the input table was inspected and found to contain Galactocentric velocity components but no valid parallax or distance information for the selected candidates. Because angular momentum requires both position and velocity, this milestone does not force an invalid angular-momentum calculation. Instead, it creates a readiness-aware orbital diagnostics table and explicitly marks which quantities are available and which require additional distance information.

## 2. Input

Input file:

    data/processed/project_ii_orbit_input_candidates.csv

The input file contains 27 candidate rows and includes:

    source_id
    ra, dec
    parallax
    pmra, pmdec
    radial_velocity
    bp_rp, absolute_g_mag
    feh
    tangential_velocity_kms
    galcen_vx, galcen_vy, galcen_vz, galcen_vtot
    has_astrometric_6d_input
    has_galcen_velocity_input
    orbit_input_ready

A data-readiness check showed that all 27 candidates have missing parallax values and are marked as not fully orbit-input-ready.

## 3. Method

### 3.1 Velocity diagnostics

The milestone preserves the available Galactocentric velocity components and standardizes their names as:

    galcen_vx_kms
    galcen_vy_kms
    galcen_vz_kms

The total Galactocentric velocity is recomputed from the components:

    galcen_vtot_recomputed_kms = sqrt(vx^2 + vy^2 + vz^2)

A consistency column is also added:

    galcen_vtot_delta_kms = galcen_vtot_recomputed_kms - galcen_vtot

### 3.2 Angular momentum readiness

Angular momentum requires:

    L = r x v

where r is the Galactocentric position vector and v is the Galactocentric velocity vector.

The current candidate table contains the velocity vector but does not contain a reliable distance or parallax for deriving the position vector. Therefore, position-dependent diagnostics are included as columns but intentionally left missing:

    distance_kpc_used
    galcen_x_kpc
    galcen_y_kpc
    galcen_z_kpc
    galcen_radius_kpc
    galcen_cyl_radius_kpc
    galcen_abs_z_kpc
    Lx_kpc_kms
    Ly_kpc_kms
    Lz_kpc_kms
    Lperp_kpc_kms
    Ltot_kpc_kms
    Lperp_over_Ltot
    Lz_over_Ltot
    abs_Lz_over_Ltot

This prevents the analysis from overclaiming orbital information that is not supported by the available input data.

### 3.3 Readiness flags

The following readiness flags are added:

    has_positive_parallax
    has_distance_or_parallax_input
    can_compute_galcen_position
    can_compute_angular_momentum
    missing_orbital_position_input

For the current candidate sample, can_compute_angular_momentum is false for all rows, while missing_orbital_position_input is true for all rows.

### 3.4 Velocity-space diagnostic flags

Although full angular-momentum diagnostics are not currently available, the milestone still provides velocity-space diagnostic flags:

    high_galcen_velocity_flag      galcen_vtot_recomputed_kms >= 250 km/s
    high_tangential_velocity_flag  tangential_velocity_kms >= 200 km/s
    metal_poor_flag                [Fe/H] <= -1.0

These flags preserve useful candidate-level information for later orbit analysis.

## 4. Outputs

Main output table:

    data/processed/project_ii_orbital_diagnostics_candidates.csv

Generated figures:

    figures/project_ii_orbital_diagnostics_velocity_summary.png
    figures/project_ii_orbital_diagnostics_feh_velocity.png
    figures/project_ii_orbital_diagnostics_readiness_summary.png

## 5. Figure descriptions

### 5.1 Velocity summary

The velocity-summary figure compares tangential velocity and recomputed Galactocentric total velocity, with points colored by metallicity. This provides a compact view of whether the candidate sample contains dynamically hot and metal-poor objects.

### 5.2 Metallicity versus velocity

The metallicity-versus-velocity figure shows [Fe/H] against Galactocentric total velocity. Reference lines mark [Fe/H] = -1.0 and v_tot = 250 km/s, which are used as simple preparation-level flags.

### 5.3 Readiness summary

The readiness-summary figure shows how many candidates have Galactocentric velocity input, positive parallax, angular-momentum readiness, missing position input, and velocity/metallicity flags.

## 6. Scientific interpretation

This milestone provides an important data-quality result: the current Project II candidate set has useful Galactocentric velocity information but lacks the position information required for angular-momentum analysis.

This means the sample is suitable for velocity-space candidate inspection, but not yet suitable for physically meaningful Lz, Lperp, Ltot, orbital inclination, or disk/halo orbit classification.

The main scientific value of this milestone is therefore twofold:

1. it preserves and summarizes the available velocity-space diagnostics;
2. it explicitly identifies the missing distance/parallax input needed before full orbital diagnostics can be performed.

This is a stronger result than forcing angular-momentum values from incomplete phase-space information.

## 7. Limitations

The current milestone does not compute physical angular momentum because the candidate table lacks valid distance/parallax information. As a result:

- Galactocentric position is unavailable;
- Galactocentric radius is unavailable;
- Lz, Lperp, and Ltot are unavailable;
- disk-like and halo-like orbital flags cannot be assigned from angular momentum.

The boolean orbit flags are therefore left false, while the readiness columns document the reason.

## 8. Next steps

The next milestone should focus on one of the following:

1. recover or re-query Gaia parallax / distance information for the 27 candidates;
2. merge the candidate table back with the larger Gaia-LAMOST feature table if that table contains valid parallax or distance;
3. add a distance-estimation step, preferably with quality filters;
4. recompute Galactocentric positions;
5. then compute Lz, Lperp, Ltot, Galactocentric radius, and orbit-classification diagnostics.

Only after this distance-recovery step should the project proceed to full orbit integration or action/orbital-parameter estimation.

## 9. Milestone status

Project II Milestone 3 is complete as a readiness-aware orbital diagnostics preparation milestone once the notebook, output CSV, figures, and report are committed.
