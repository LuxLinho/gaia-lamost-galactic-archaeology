# Research Program Current Status Summary

## Program Title

**Galactic Archaeology with Gaia DR3 & LAMOST DR9**

## Subtitle

**A Personal Independent Research Program in Galactic Dynamics and Stellar Populations**

## Research Goal

Use Gaia DR3 and LAMOST DR9 to identify dynamically and chemically distinct stellar populations in the Milky Way through reproducible computational methods.

---

## Current Program Status

The repository has been upgraded from milestone-based development into a six-part research program.

Current status:

| Research Project | Status | Current Role |
|---|---|---|
| Project I — Data Foundation | Initial version completed | Provides the Gaia-LAMOST candidate data foundation |
| Project II — Orbital Dynamics | Baseline orbit integration and consistency analysis completed | Provides angular momentum, galpy orbit parameters, and internal dynamical validation |
| Project III — Stellar Population Analysis | Initial classification and priority review completed | Provides broad population labels and follow-up priority tiers |
| Project IV — Chemical Evolution | Metallicity-readiness layer completed | Uses currently available [Fe/H] and identifies chemical follow-up needs |
| Project V — Computational Discovery | GMM stability/sensitivity validation completed | Provides data-science candidate discovery evidence with explicit model-dependence limits |
| Project VI — Scientific Validation | Validation roadmap and uncertainty inventory completed | Tracks uncertainty sources and validation priorities |

---

## Major Scientific Results So Far

### Project II — Orbital Dynamics

Project II has produced a full baseline dynamical layer for the 27-candidate sample.

Key results:

- 27 / 27 candidates are ready for baseline orbit integration.
- 27 / 27 candidates were successfully integrated with `galpy`.
- 16 candidates have eccentricity >= 0.7.
- 16 candidates have Zmax >= 3 kpc.
- 24 candidates are inner-halo-like by the current baseline orbit proxy.
- 0 candidates are disk-confined by the current orbit proxy.
- Orbit-angular-momentum consistency analysis found:
  - 24 consistent candidates
  - 3 partially consistent candidates
  - 0 obvious tension cases

Interpretation:

The candidate sample is strongly dominated by dynamically hot, halo-like, radial, retrograde, or high-inclination behavior rather than ordinary disk-confined orbits.

---

### Project III — Stellar Population Analysis

Project III has produced first-pass population labels and a priority review.

Population-group counts:

- Retrograde halo: 15
- Radial halo or GSE-like: 4
- Prograde hot or heated-disk: 3
- Retrograde uncertain: 3
- High-inclination halo: 1
- General halo: 1

Population-confidence counts:

- Moderate: 24
- Limited: 3

Priority-tier counts after stricter review:

- Priority A: 6
- Priority B: 14
- Priority C: 4
- Review only: 3

Interpretation:

The population analysis suggests that the sample is dominated by halo-like and dynamically hot populations, with especially important retrograde and radial candidates for later literature comparison.

---

### Project IV — Metallicity Structure and Chemical Readiness

Project IV currently uses [Fe/H] only.

Metallicity-class counts:

- Very metal-poor: 2
- Metal-poor: 3
- Moderately metal-poor: 8
- Metal-intermediate: 14

Chemical follow-up priority counts:

- Chemical Priority A: 5
- Chemical Priority B: 9
- Chemical Priority C: 6
- Chemical review only: 7

Interpretation:

The available [Fe/H] information already supports a useful metallicity-readiness layer, but full chemical tagging is not yet possible because alpha, Mg, Ca, and Si abundance columns are not currently integrated.

---

### Project V — Computational Discovery

Project V has completed the advanced-clustering baseline comparison and GMM
stability/sensitivity validation on the 1,838-star discovery parent sample.

Key results:

- The M2 locked GMM baseline was reproduced exactly in M3: ARI = 1.0 against M2
  GMM labels and 32 / 32 reference members recovered.
- The M2 reference component contains 24 known candidates and 8 newly grouped
  non-candidate stars.
- The M2 candidate enrichment is 51.06x over the parent-sample candidate rate.
- Across 30 random seeds, mean Jaccard overlap with the M2 reference component is
  0.748 and mean reference recall is 0.776.
- Across 30 independent 80 percent subsamples, mean Jaccard overlap is 0.656 and
  mean reference recall is 0.728.
- Across model-specification sensitivity checks, mean Jaccard overlap is 0.715,
  with a minimum of 0.344.

Interpretation:

The GMM result is computationally reproducible under the exact locked M2
configuration and useful as a candidate-rich follow-up structure, but the
51.06-fold enrichment should be treated as model-setting dependent rather than
as standalone evidence for a physically real stellar substructure.

---

### Project VI — Scientific Validation

Project VI has produced the first uncertainty inventory and validation roadmap.

Validation-priority counts:

- Validation Priority A: 2
- Validation Priority B: 9
- Validation Priority C: 9
- Validation review only: 7

Validation-risk counts:

- Lower validation risk: 24
- High validation risk: 3

Interpretation:

The strongest candidates are already scientifically interesting, but final claims require Monte Carlo uncertainty propagation, potential-model sensitivity tests, and literature-region comparison.

---

## Current Data Products

- **Candidate Catalog v1 / early processed outputs**: `data/processed/` — available
- **Project II orbital-family candidates**: `data/processed/project_ii_orbital_family_candidates.csv` — 27 rows × 74 columns
- **Project II galpy orbit candidates**: `data/processed/project_ii_galpy_orbit_candidates.csv` — 27 rows × 91 columns
- **Project II orbit-AM consistency table**: `data/processed/project_ii_orbit_angular_momentum_consistency.csv` — 27 rows × 94 columns
- **Project III population candidates**: `data/processed/project_iii_population_candidates.csv` — 27 rows × 98 columns
- **Project III priority candidates**: `data/processed/project_iii_population_priority_candidates.csv` — 27 rows × 17 columns
- **Project IV metallicity candidates**: `data/processed/project_iv_metallicity_candidates.csv` — 27 rows × 21 columns
- **Project VI uncertainty inventory**: `data/processed/project_vi_uncertainty_inventory.csv` — 27 rows × 24 columns
- **Project V M3 run summary**: `data/processed/project_v_m3_run_summary.csv` — 82 rows × 30 columns
- **Project V M3 star stability**: `data/processed/project_v_m3_star_stability.csv` — 1,838 rows × 13 columns

---

## Current Figure Products

Current major figure groups include:

- Project II angular-momentum diagnostics
- Project II galpy orbit diagnostics
- Project II orbit-angular-momentum consistency diagnostics
- Project III population-group diagnostics
- Project IV metallicity diagnostics
- Project V GMM stability and sensitivity diagnostics

---

## Current Reports

Major reports include:

- `report/project_ii_orbital_family_interpretation.md`
- `report/project_ii_galpy_orbit_integration_plan.md`
- `report/project_ii_galpy_baseline_orbit_integration.md`
- `report/project_ii_orbit_angular_momentum_consistency.md`
- `report/project_iii_initial_population_classification.md`
- `report/project_iii_population_classification_review.md`
- `report/project_iv_metallicity_structure_and_chemical_readiness.md`
- `report/project_v_milestone3_gmm_stability_sensitivity_validation.md`
- `report/project_vi_validation_uncertainty_inventory.md`

---

## Current Limitations

The current research program is scientifically structured but still has important limitations:

1. The orbit integration uses a single baseline Milky Way potential.
2. Monte Carlo uncertainty propagation has not yet been applied.
3. Distance uncertainty remains a major limitation.
4. Literature-defined merger-remnant regions have not yet been applied.
5. Chemical information is currently limited to [Fe/H].
6. Alpha, Mg, Ca, Si, and other abundance dimensions are not yet integrated.
7. Some notebooks are currently result-review notebooks and should later be upgraded into fuller executable research notebooks.
8. Repository terminology still needs a final consistency polish to remove old milestone and Project 1/2/3 wording.

---

## Recommended Next Steps

The next research steps are:

1. Project VI small-scale Monte Carlo prototype on Priority A candidates.
2. Literature comparison preparation for Gaia-Sausage-Enceladus, Sequoia, Helmi Stream, Nyx, and Splash.
3. Search original LAMOST data products for additional abundance columns.
4. Add Energy-Lz and action-space diagnostics.
5. Prepare a repository-wide consistency polish pass.
6. Begin manuscript-structure planning after validation improves.

---

## Current Overall Assessment

The project has reached a strong first integrated research-program state.

It now contains:

- A reproducible data foundation
- Computational-discovery evidence
- Angular-momentum diagnostics
- Baseline galpy orbit integration
- Internal dynamical consistency validation
- Initial stellar-population classification
- Metallicity-readiness analysis
- Scientific-validation roadmap

The next major scientific upgrade should focus on uncertainty propagation and literature comparison.
