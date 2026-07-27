# Project V — Computational Discovery
## Milestone 4: Cross-Domain Validation of the Candidate-Enriched GMM Component

Date: 2026-07-27

## Executive Summary

Project V Milestone 4 asks whether the 32-star candidate-enriched Gaussian Mixture Model (GMM) reference component from M2/M3 shows supporting coherence in information not already used to construct the GMM.

The answer is deliberately cautious:

> Cross-domain agreement can strengthen the case for follow-up, but it does not by itself establish a common physical origin.

The 24 recovered known candidates in the GMM reference component have full candidate-level coverage in the existing Project II/III/IV/VI validation tables, and they retain supporting orbital and population context. The 8 additional GMM members currently have no candidate-level held-out orbital, population, chemical-readiness, or uncertainty-validation coverage. Therefore the M4 result is **partially supported for the known-candidate core, but inconclusive for the additional members and for the full 32-star GMM component**.

This does not overturn the M3 conclusion. The 51.06-fold candidate enrichment remains a **model-dependent follow-up prioritization signal**, not evidence that a physically distinct stellar population has already been discovered.

## Inputs

Primary Project V inputs:

- `data/processed/project_v_m2_cluster_assignments.csv`
- `data/processed/project_v_m3_star_stability.csv`
- `data/processed/project_v_m3_run_summary.csv`
- `data/processed/project_v_candidate_cross_method_summary.csv`

Cross-domain validation inputs:

- `data/processed/project_ii_orbit_angular_momentum_consistency.csv`
- `data/processed/project_iii_population_candidates.csv`
- `data/processed/project_iv_metallicity_candidates.csv`
- `data/processed/project_vi_uncertainty_inventory.csv`

All joins were performed with `source_id`. Every input table used here has unique `source_id` keys within its own scope. The Project II/III/IV/VI validation tables are candidate-level products with 27 rows, not full-parent-sample products.

## Reference Groups

| Group | Definition | Stars |
|---|---:|---:|
| Recovered known candidates | Known candidates inside the M2 GMM reference component | 24 |
| Additional GMM members | Non-candidate stars inside the M2 GMM reference component | 8 |
| Omitted known candidates | Known candidates outside the M2 GMM reference component | 3 |
| Parent comparison | All other stars in the 1,838-star Project V parent sample | 1,803 |

The locked M2/M3 baseline remains unchanged:

- Parent sample: 1,838 stars
- Known candidates: 27 stars
- GMM reference component: 32 stars
- Candidate recovery: 24 / 27
- Additional members: 8
- Baseline enrichment: 51.0556x
- Exact M2 reproduction in M3: ARI = 1.000000, 32 / 32 reference members recovered

## Circularity Boundary

The M2 GMM was fit using:

- `feh`
- `rv`
- `tangential_velocity_kms`
- `bp_rp`
- `absolute_g_mag`

These features are therefore not treated as independent validation. They can be used for description and triage only.

The strongest held-out evidence in this milestone comes from orbital quantities and labels that were not direct GMM input columns, including angular momentum, `galpy` orbit summaries, orbital-family labels, population labels, and validation-risk metadata. Project IV currently provides [Fe/H]-based chemical readiness rather than detailed abundance ratios, so it is descriptive rather than independent chemical validation.

## Coverage Results

| Validation domain | Recovered known candidates | Additional GMM members | Omitted known candidates | Parent comparison |
|---|---:|---:|---:|---:|
| Project II orbital diagnostics | 24 / 24 | 0 / 8 | 3 / 3 | 0 / 1,803 |
| Project III population labels | 24 / 24 | 0 / 8 | 3 / 3 | 0 / 1,803 |
| Project IV chemical readiness | 24 / 24 | 0 / 8 | 3 / 3 | 0 / 1,803 |
| Project VI validation-risk metadata | 24 / 24 | 0 / 8 | 3 / 3 | 0 / 1,803 |

This is the central limitation of M4. Existing cross-domain tables validate the historical 27-candidate sample, not the full GMM reference component or the full 1,838-star parent sample.

## Orbital Evidence

The recovered known-candidate core has full Project II coverage. Among the 24 recovered known candidates:

- 21 / 24 are labelled `consistent` in the orbit-angular-momentum consistency table.
- 3 / 24 are labelled `partially_consistent`.
- Median `Lz_kpc_kms` is -280.96.
- Median `Lperp_kpc_kms` is 534.90.
- Median `galpy_eccentricity` is 0.803.
- Median `galpy_zmax_kpc` is 3.55.

The 3 omitted known candidates also have full Project II coverage:

- 3 / 3 are labelled `consistent`.
- Median `Lz_kpc_kms` is -3615.32.
- Median `Lperp_kpc_kms` is 587.11.
- Median `galpy_eccentricity` is 0.376.
- Median `galpy_zmax_kpc` is 3.95.

Exploratory recovered-versus-omitted tests show differences in several orbital quantities, including selection frequency, `Lz`, `Ltot`, eccentricity, and pericenter. These statistics are not discovery-grade because the omitted group has only three stars.

The 8 additional GMM members have no current Project II orbital rows, so their orbital coherence cannot yet be tested.

## Population Evidence

The 24 recovered known candidates have these Project III population groups:

| Population group | Stars |
|---|---:|
| `retrograde_halo` | 12 |
| `radial_halo_or_gse_like` | 4 |
| `prograde_hot_or_heated_disk` | 3 |
| `retrograde_uncertain` | 3 |
| `general_halo` | 1 |
| `high_inclination_halo` | 1 |

The 3 omitted known candidates are all labelled `retrograde_halo`. This means the recovered candidates are broadly halo-like, but the omitted candidates are not contradicted by population labels. The population layer supports the relevance of the 27-candidate set, but it does not uniquely validate GMM membership.

The 8 additional GMM members have no Project III population labels.

## Chemical Evidence

Project IV currently provides [Fe/H]-based metallicity classes and chemical-readiness priorities. Because [Fe/H] was one of the GMM input features, this is not independent chemical validation.

Among the 24 recovered known candidates:

- 11 are `metal_intermediate`.
- 8 are `moderately_metal_poor`.
- 3 are `metal_poor`.
- 2 are `very_metal_poor`.

The 3 omitted known candidates are all `metal_intermediate`. The 8 additional GMM members have no Project IV chemical-readiness rows.

Detailed abundance information remains required before chemical coherence can be assessed independently.

## Stability and Cross-Domain Evidence

M3 per-star selection frequency separates the groups strongly:

| Group | Mean selection frequency | Median | Range |
|---|---:|---:|---:|
| Recovered known candidates | 0.8786 | 0.9451 | 0.6463-0.9878 |
| Additional GMM members | 0.4131 | 0.2317 | 0.1341-0.8659 |
| Omitted known candidates | 0.0569 | 0.0610 | 0.0244-0.0854 |

Within the 27 candidate-covered stars, selection frequency is positively correlated with `galpy_eccentricity` in an exploratory Spearman test (`rho = 0.6384`, `p = 0.000339`). It is not meaningfully correlated with `galpy_zmax_kpc` in this small sample (`rho = 0.0233`, `p = 0.9083`).

This suggests that the GMM is preferentially recovering a computationally stable subset of the historical candidate sample, but it does not establish that the 32 stars share a common physical origin.

## Required Interpretation Questions

1. **Does held-out evidence support the 32-star GMM reference component?**
   Only partly. It supports the 24 recovered known-candidate core, but the 8 additional members lack held-out coverage.

2. **Is the validation independent of the GMM feature space?**
   Orbital diagnostics are mostly independent of the five direct GMM input columns. Project IV [Fe/H] readiness is not independent because [Fe/H] was a GMM feature.

3. **What is the coverage limitation?**
   Project II/III/IV/VI validation products cover the 27 known candidates. They do not cover the 8 additional GMM members or the parent comparison sample.

4. **Do the 8 additional members look validated?**
   Not yet. They remain follow-up targets, but current cross-domain tables do not provide orbital, population, chemical-readiness, or uncertainty-validation rows for them.

5. **Do the 24 recovered known candidates show supporting coherence?**
   Yes, at the candidate-core level. They have complete validation coverage, high mean M3 selection frequency, mostly consistent orbit-AM labels, and mostly halo-like Project III population labels.

6. **Do the 3 omitted candidates undermine the GMM component?**
   They show that GMM membership is not equivalent to candidate validity. The omitted candidates retain plausible orbital/population labels, so their omission reflects model selectivity rather than physical disqualification.

7. **Does selection frequency track held-out evidence?**
   It tracks group membership strongly and correlates with eccentricity within the 27 candidate-covered stars, but it is a computational stability diagnostic rather than physical evidence by itself.

8. **Is there independent chemical support?**
   No. Current chemistry is limited to [Fe/H]-based classes and readiness; detailed abundance ratios are absent.

9. **What is the final M4 classification?**
   **Partially supported for the known-candidate core; inconclusive for the additional members and the full 32-star component because held-out coverage is limited.**

10. **Does this establish a physical stellar population?**
    No. Computational recovery and cross-domain agreement support prioritization, not discovery-level membership or common-origin claims.

## Scientific Interpretation Boundary

Computational recovery is not equivalent to physical discovery.

Physical interpretation still requires:

- orbital coherence for all 32 reference-component stars,
- detailed abundance information beyond [Fe/H],
- uncertainty propagation,
- selection-function analysis,
- external literature or catalogue comparison.

## Outputs

Notebook:

- `notebooks/28_project_v_gmm_cross_domain_validation.ipynb`

Processed tables:

- `data/processed/project_v_gmm_cross_domain_membership.csv`
- `data/processed/project_v_gmm_cross_domain_coverage_summary.csv`
- `data/processed/project_v_gmm_cross_domain_group_summary.csv`
- `data/processed/project_v_gmm_cross_domain_statistics.csv`
- `data/processed/project_v_gmm_cross_domain_evidence_assessment.csv`

Figures:

- `figures/project_v_gmm_cross_domain_orbital_comparison.png`
- `figures/project_v_gmm_cross_domain_population_composition.png`
- `figures/project_v_gmm_cross_domain_stability_evidence.png`

## Conclusion

Project V M4 strengthens the interpretation of the recovered known-candidate core, but it does not validate the full 32-star GMM component as a physical stellar population. The 51.06-fold enriched GMM component remains useful as a follow-up prioritization signal under a model-dependent computational-discovery framework.
