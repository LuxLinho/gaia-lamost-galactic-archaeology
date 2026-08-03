# Project VI - Small-Scale Monte Carlo Uncertainty Propagation Prototype

## Scope

This report documents a small-scale Project VI Monte Carlo prototype for exactly two `validation_priority_A` candidates. It is not a full uncertainty budget and it is not full Gaia astrometric covariance propagation.

The only enabled mode is `measured_only_parallax`. Parallax is sampled from the catalog central value using the measured-derived uncertainty `parallax / parallax_over_error`. RA, Dec, proper motion, and radial velocity are held fixed in every draw. Distance is recomputed from each sampled parallax and is not independently sampled.

Assumed uncertainty is not used in this first prototype.

## Inputs

Input tables:

- `data/processed/project_vi_validation_priority_candidates.csv`
- `data/processed/gaia_lamost_larger_velocity_features.csv`
- `data/processed/project_ii_galpy_orbit_candidates.csv`

Prototype targets:

- `3089847099636770560`: parallax=0.637151 mas, parallax_error=0.023816 mas, pmra=-42.072760 mas/yr, pmdec=-36.356421 mas/yr, rv=-11.29 km/s.
- `3089534353001157632`: parallax=0.458766 mas, parallax_error=0.018230 mas, pmra=2.906364 mas/yr, pmdec=-36.283028 mas/yr, rv=-43.26 km/s.

## Uncertainty Provenance

Measured-derived uncertainty:

- Parallax uncertainty is derived from the measured Gaia parallax and `parallax_over_error`.

Missing uncertainty:

- `pmra_error` is missing for these two candidates in the current recovered tables.
- `pmdec_error` is missing for these two candidates in the current recovered tables.
- `radial_velocity_error` and LAMOST `rv_err` are missing for these two candidates in the current recovered tables.
- Independent `distance_error` is missing; distance is derived from sampled parallax.
- Astrometric covariance/correlation columns are missing for these two candidates and are not used.

Assumed uncertainty:

- Not used. No proper-motion or radial-velocity observational uncertainty is invented in this prototype.

## Method

Each candidate receives 200 parallax draws from a Gaussian distribution. Non-positive parallax draws are rejected and counted. For every valid draw, inverse parallax gives distance in kpc. The notebook then recomputes `Lz`, `Lperp`, `Ltot`, eccentricity, `rperi`, `rap`, and `Zmax` using the existing Project II conventions: Astropy Galactocentric coordinates for angular momentum, and `galpy` `Orbit(..., radec=True, ro=8.2, vo=232.0, solarmotion='schoenrich')` with `MWPotential2014`, 5 Gyr integration, and 1001 time steps for orbit quantities.

## Results

Values are reported as median [p16, p84].

| source_id | success_fraction | Lz | Lperp | eccentricity | rperi_kpc | rap_kpc | Zmax_kpc |
|:--|--:|--:|--:|--:|--:|--:|--:|
| 3089847099636770560 | 1.000 | -961.346 [-1009.49, -915.575] | 3530.83 [3371.54, 3682.46] | 0.708604 [0.663632, 0.749227] | 9.38952 [9.34081, 9.43422] | 55.0483 [46.1967, 65.817] | 52.8071 [43.6379, 63.7338] |
| 3089534353001157632 | 1.000 | 448.815 [332, 592.763] | 1294.71 [1246.34, 1354.05] | 0.838932 [0.817288, 0.868049] | 1.88943 [1.43563, 2.35992] | 21.631 [20.3074, 23.5196] | 17.6496 [16.9662, 18.6187] |

## Interpretation Boundary

This prototype only answers whether the two high-priority candidates are stable to the available parallax uncertainty. It cannot validate robustness to the full observational error budget because proper-motion errors, radial-velocity errors, distance errors, and covariance/correlation terms are missing from the current inputs.

The existing `distance_quality_flag` can read as `missing_parallax`, but the larger recovered tables do contain parallax central values for both prototype targets. The limiting issue here is missing full uncertainty/covariance propagation inputs, not absence of parallax central values.

No claim of physical population validation is made from this prototype.

## Outputs

- `notebooks/31_project_vi_small_scale_mc_uncertainty_propagation.ipynb`
- `data/processed/project_vi_mc_prototype_candidate_uncertainties.csv`
- `data/processed/project_vi_mc_prototype_draw_summary.csv`
- `figures/project_vi_mc_prototype_orbit_uncertainty.png`
- `figures/project_vi_mc_prototype_lz_lperp_uncertainty.png`
