# Project VI — Validation Roadmap and Uncertainty Inventory

## Scientific Question

What are the main uncertainty sources and validation priorities for the current Gaia-LAMOST candidate sample?

## Background and Motivation

This report begins **Project VI — Scientific Validation** in the research program *Galactic Archaeology with Gaia DR3 & LAMOST DR9*.

Projects II, III, and IV produced angular-momentum diagnostics, baseline orbit integration, population labels, priority candidates, and metallicity-readiness information. Project VI now organizes the major uncertainty sources and identifies candidates that require the highest validation priority.

This is a validation roadmap and uncertainty inventory, not a full Monte Carlo uncertainty propagation study.

## Data and Methods

Input file:

- `data/processed/project_iv_metallicity_candidates.csv`

Output files:

- `data/processed/project_vi_uncertainty_inventory.csv`
- `data/processed/project_vi_validation_priority_candidates.csv`

The inventory tracks:

- Distance provenance and distance-quality flags
- Orbit-angular-momentum consistency
- Population classification confidence
- Chemical-readiness limitations
- Metallicity availability
- Baseline galpy orbit quantities
- Candidate follow-up priority from Project III
- Chemical follow-up priority from Project IV

## Results

Total candidates:

- 27

Candidates with missing-parallax distance-quality flag:

- 27

Candidates with partially consistent orbit-angular-momentum evidence:

- 3

Candidates with limited population-classification confidence:

- 3

Candidates currently limited to [Fe/H]-only chemistry:

- 27

## Validation-Priority Counts

| project_vi_validation_priority   |   n |
|:---------------------------------|----:|
| validation_priority_B            |   9 |
| validation_priority_C            |   9 |
| validation_review_only           |   7 |
| validation_priority_A            |   2 |

## Validation-Risk Counts

| project_vi_validation_risk   |   n |
|:-----------------------------|----:|
| lower_validation_risk        |  24 |
| high_validation_risk         |   3 |

## Validation Summary by Population Group

| project_iii_population_group   | project_vi_validation_priority   | project_vi_validation_risk   |   n |   feh_median |   ecc_median |   zmax_median_kpc |   project_iii_priority_score_median |
|:-------------------------------|:---------------------------------|:-----------------------------|----:|-------------:|-------------:|------------------:|------------------------------------:|
| retrograde_halo                | validation_priority_B            | lower_validation_risk        |   6 |      -0.8415 |     0.923978 |           5.92028 |                                16.5 |
| retrograde_halo                | validation_priority_C            | lower_validation_risk        |   4 |      -0.9885 |     0.628666 |           3.14526 |                                14   |
| retrograde_halo                | validation_review_only           | lower_validation_risk        |   4 |      -0.584  |     0.456497 |           3.95593 |                                11   |
| prograde_hot_or_heated_disk    | validation_priority_C            | lower_validation_risk        |   3 |      -1.679  |     0.842909 |           4.00862 |                                12   |
| retrograde_uncertain           | validation_review_only           | high_validation_risk         |   3 |      -0.768  |     0.523503 |           1.90875 |                                 5   |
| radial_halo_or_gse_like        | validation_priority_B            | lower_validation_risk        |   2 |      -1.6075 |     0.9501   |           1.57554 |                                13.5 |
| general_halo                   | validation_priority_C            | lower_validation_risk        |   1 |      -0.534  |     0.947761 |           5.48566 |                                12   |
| high_inclination_halo          | validation_priority_B            | lower_validation_risk        |   1 |      -1.472  |     0.667406 |          18.9889  |                                15   |
| radial_halo_or_gse_like        | validation_priority_A            | lower_validation_risk        |   1 |      -1.539  |     0.836985 |          17.7844  |                                19   |
| radial_halo_or_gse_like        | validation_priority_C            | lower_validation_risk        |   1 |      -1.311  |     0.778207 |           1.05238 |                                12   |
| retrograde_halo                | validation_priority_A            | lower_validation_risk        |   1 |      -2.213  |     0.708753 |          52.8476  |                                21   |

## Interpretation

The current sample has strong internal dynamical structure, but several validation steps are still required before final scientific interpretation.

The most important limitation is distance uncertainty. The present orbit integration and angular-momentum calculations rely on the currently recovered distance information, and many candidates carry a missing-parallax quality flag. This does not invalidate the analysis, but it means that future uncertainty propagation is essential.

A second limitation is the use of a single Galactic potential in the baseline galpy integration. Potential-model dependence should be tested before final orbital claims are made.

A third limitation is chemical dimensionality. The current Project IV analysis is limited to [Fe/H]. Full chemical tagging requires alpha-element or individual abundance dimensions such as Mg, Ca, and Si.

Candidates with high Project III priority, high chemical follow-up priority, and elevated validation risk should be prioritized for Monte Carlo sampling, distance-quality review, and literature comparison.

## Validation Roadmap

Future Project VI work should include:

1. Monte Carlo sampling of distance and parallax uncertainties.
2. Proper-motion and radial-velocity uncertainty propagation.
3. Recalculation of Lz, Lperp, Ltotal, eccentricity, rperi, rap, and Zmax across sampled realizations.
4. Confidence intervals for orbit-derived quantities.
5. Sensitivity tests against different Galactic potentials.
6. Literature-region comparison for Gaia-Sausage-Enceladus, Helmi Stream, Sequoia, Nyx, and Splash.
7. Chemical-abundance uncertainty assessment if additional abundance columns are recovered.

## Deliverables

This step produces:

- Candidate-level uncertainty inventory
- Candidate-level validation priority table
- Validation roadmap report
- Notebook entry point for Project VI uncertainty inventory review

## Next Steps

The next Project VI step should be a small-scale Monte Carlo prototype on a limited number of high-priority candidates before scaling to the full sample.

## Small-Scale Monte Carlo Prototype Readiness Audit

This audit records the first Project VI prototype-design pass after the
additional GMM member orbital follow-up. It is intentionally limited to the
current processed data products and does not yet generate a full-sample
uncertainty catalogue.

### Repository state at audit time

The working tree was clean at the start of this audit. The latest commit was:

- `8a4f44b Add additional GMM member orbital follow-up`

Recent preceding commits included:

- `4e4c05b Complete Project V scientific synthesis`
- `826a945 Add Project V cross-domain validation`

### Priority-A prototype targets

The current Project VI table contains exactly two
`validation_priority_A` candidates. These are the preferred first prototype
targets because they are also Project III `priority_A` objects and have strong
orbit/population follow-up value.

| source_id | project_vi_validation_priority | project_iii_priority_tier | project_iii_priority_score | project_iii_population_group | feh | galpy_eccentricity | galpy_zmax_kpc | Lz_kpc_kms | Lperp_kpc_kms |
|:--|:--|:--|--:|:--|--:|--:|--:|--:|--:|
| 3089847099636770560 | validation_priority_A | priority_A | 21 | retrograde_halo | -2.213 | 0.708753 | 52.847640 | -961.146324 | 3531.457514 |
| 3089534353001157632 | validation_priority_A | priority_A | 19 | radial_halo_or_gse_like | -1.539 | 0.836985 | 17.784401 | 471.072356 | 1303.901865 |

Project III contains four additional `priority_A` candidates that are
currently Project VI `validation_priority_B`; those should be treated as
second-wave prototype targets after the two Project VI `validation_priority_A`
objects are tested.

### Available phase-space inputs

For the two Project VI `validation_priority_A` candidates, the larger recovered
Gaia-LAMOST processed tables provide central astrometric and radial-velocity
values:

| source_id | parallax_mas | parallax_over_error | derived_parallax_error_mas | pmra_masyr | pmdec_masyr | distance_pc | rv_kms |
|:--|--:|--:|--:|--:|--:|--:|--:|
| 3089847099636770560 | 0.637151 | 26.753075 | 0.023816 | -42.072760 | -36.356421 | 1569.487021 | -11.29 |
| 3089534353001157632 | 0.458766 | 25.166069 | 0.018229 | 2.906364 | -36.283028 | 2179.762224 | -43.26 |

The `distance_quality_flag` in the current Project VI inventory is
`missing_parallax`, inherited from earlier candidate-table readiness logic.
For these two candidates, this flag should be interpreted carefully: the
larger recovered Gaia-LAMOST table does contain parallax central values and an
inverse-parallax distance central value, but the Project VI candidate products
do not yet carry full Gaia astrometric uncertainty and covariance information.

### Uncertainty and covariance inventory

Measured or measured-derived quantities currently available for the two
prototype targets:

- Parallax central value.
- `parallax_over_error`.
- Parallax uncertainty derived as `parallax / parallax_over_error`.
- Proper-motion central values, `pmra` and `pmdec`.
- LAMOST radial-velocity central value, `rv`.
- Inverse-parallax distance central value, `distance_pc`.

Missing uncertainty quantities for the two prototype targets:

- `pmra_error`.
- `pmdec_error`.
- LAMOST `rv_err`.
- Gaia `radial_velocity_error`.
- Explicit distance uncertainty.
- RA/Dec uncertainties.

Missing covariance or correlation quantities for the two prototype targets:

- `ra_dec_corr`.
- `ra_parallax_corr`.
- `ra_pmra_corr`.
- `ra_pmdec_corr`.
- `dec_parallax_corr`.
- `dec_pmra_corr`.
- `dec_pmdec_corr`.
- `parallax_pmra_corr`.
- `parallax_pmdec_corr`.
- `pmra_pmdec_corr`.

The repository does contain Gaia DR3 uncertainty and correlation columns in
`data/processed/project_ii_additional_gmm_member_gaia_dr3_query.csv`, but that
file covers the eight additional GMM members from the Project II follow-up. It
does not cover the two Project VI `validation_priority_A` candidates.

### Existing reusable orbit-calculation chain

The angular-momentum calculation is reusable from
`notebooks/16_project_ii_angular_momentum_diagnostics.ipynb`:

```text
Astropy SkyCoord -> Galactocentric position and velocity
Lx = y * vz - z * vy
Ly = z * vx - x * vz
Lz = x * vy - y * vx
Lperp = sqrt(Lx^2 + Ly^2)
Ltot = sqrt(Lx^2 + Ly^2 + Lz^2)
```

The baseline orbit-integration calculation is reusable from the Project II
galpy workflow:

```text
galpy Orbit(..., radec=True, ro=8.2, vo=232.0, solarmotion='schoenrich')
Potential: MWPotential2014
Integration time: 5 Gyr
Steps: 1001
Outputs: eccentricity, rperi, rap, Zmax, energy
```

The additional-GMM-member notebook
`notebooks/30_project_ii_additional_gmm_member_orbital_followup.ipynb` contains
a limited Monte Carlo pattern for angular-momentum uncertainty propagation
using Gaia parallax/proper-motion covariance. That pattern is reusable, but the
Project VI prototype must adapt it because the two Project VI `priority_A`
targets currently lack proper-motion errors and covariance columns.

### Minimum viable Monte Carlo prototype design

The first executable prototype should be limited to the two Project VI
`validation_priority_A` candidates and approximately 200 draws per candidate.
It should not expand to the full 27-candidate sample or to 1000 draws yet.

Recommended first mode:

- Name: `measured_parallax_only`.
- Draw parallax from a Gaussian centered on the measured parallax.
- Use `parallax / parallax_over_error` as the measured-derived parallax sigma.
- Reject non-positive parallax draws.
- Recompute distance for each accepted draw as inverse parallax.
- Hold RA, Dec, proper motions, and radial velocity fixed.
- Recompute `Lz`, `Lperp`, `Ltot`, eccentricity, `rperi`, `rap`, and `Zmax`.

Optional sensitivity mode:

- Name: `assumption_sensitivity`.
- Use clearly labeled assumed scales for missing proper-motion or
  radial-velocity uncertainties only if needed for stress testing.
- Store those columns as assumed uncertainties, never as measured
  observational errors.
- Keep the measured-only mode as the primary scientific result.

Required output fields:

- Candidate identifier and Project VI/Project III priority labels.
- Input central values.
- Uncertainty provenance for each sampled dimension:
  `measured_uncertainty`, `missing_uncertainty`, or `assumed_uncertainty`.
- Number of requested draws.
- Number and fraction of successful draws.
- Median, p16, and p84 for `Lz`, `Lperp`, `Ltot`, eccentricity, `rperi`,
  `rap`, and `Zmax`.
- A note explicitly stating which uncertainties were missing and whether any
  assumed scales were used.

Proposed prototype deliverables:

- `notebooks/31_project_vi_small_scale_mc_uncertainty_propagation.ipynb`
- `data/processed/project_vi_mc_prototype_candidate_uncertainties.csv`
- `data/processed/project_vi_mc_prototype_draw_summary.csv`
- `figures/project_vi_mc_prototype_lz_lperp_uncertainty.png`
- `figures/project_vi_mc_prototype_orbit_uncertainty.png`
- `report/project_vi_small_scale_mc_uncertainty_prototype.md`

The report must not present missing proper-motion, radial-velocity, distance,
or covariance uncertainties as real observed uncertainties. Any assumed values
must remain explicitly labeled as assumptions and separated from measured or
measured-derived uncertainty propagation.
