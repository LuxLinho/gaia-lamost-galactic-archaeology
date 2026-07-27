<div align="center">

# Galactic Archaeology with Gaia DR3 & LAMOST DR9

**A personal independent research program in Galactic dynamics, stellar populations, computational discovery, and scientific validation**

![Project Status](https://img.shields.io/badge/status-active_research-2f6f9f)
![Research Program](https://img.shields.io/badge/program-six_project_structure-4051b5)
![Python](https://img.shields.io/badge/python-3.x-3776ab)
![Reproducibility](https://img.shields.io/badge/reproducible-notebooks_%2B_reports-4c8c2b)

[Program Charter](docs/research_program_charter.md) ·
[Current Status](docs/current_research_status.md) ·
[Project V Final Synthesis](report/project_v_final_scientific_synthesis.md) ·
[Final Notebook](notebooks/29_project_v_final_scientific_synthesis.ipynb)

</div>

Repository: [github.com/LuxLinho/gaia-lamost-galactic-archaeology](https://github.com/LuxLinho/gaia-lamost-galactic-archaeology)

## Project Overview

This repository develops a reproducible Gaia-LAMOST Galactic archaeology workflow using Gaia DR3 astrometry and photometry together with LAMOST DR9 spectroscopy. The project is structured as a six-part independent research program rather than a single notebook analysis.

The current repository contains a validated data foundation, candidate-level dynamical diagnostics, baseline `galpy` orbit integration, first-pass stellar-population interpretation, metallicity-readiness analysis, computational-discovery experiments, and a scientific-validation roadmap.

## Research Goal

Use Gaia DR3 and LAMOST DR9 to identify, prioritize, and validate dynamically and chemically unusual stars in the Milky Way through transparent computational methods.

The present outputs should be read as an exploratory but reproducible research portfolio. They support follow-up prioritization and method development; they do not yet claim a definitive discovery of a new Galactic substructure.

## Research Projects

| Project | Current Status | Current Role | Primary Index |
|---|---|---|---|
| Project I — Data Foundation | Initial version completed | Gaia-LAMOST sample construction, quality control, feature engineering, and candidate catalogue foundation | [docs/project_01_data_foundation.md](docs/project_01_data_foundation.md) |
| Project II — Orbital Dynamics | Baseline orbit integration and consistency analysis completed | Angular momentum, baseline `galpy` orbit parameters, and internal dynamical consistency checks | [docs/project_02_orbital_dynamics.md](docs/project_02_orbital_dynamics.md) |
| Project III — Stellar Population Analysis | Initial classification and priority review completed | Broad population labels and candidate follow-up priority tiers | [docs/project_03_stellar_populations.md](docs/project_03_stellar_populations.md) |
| Project IV — Chemical Evolution | Metallicity-readiness layer completed | Current [Fe/H]-based chemical triage and follow-up readiness; full abundance tagging remains future work | [docs/project_04_chemical_evolution.md](docs/project_04_chemical_evolution.md) |
| Project V — Computational Discovery | Scientific synthesis completed | PCA, UMAP, DBSCAN, HDBSCAN, OPTICS, GMM comparison, model-dependence tests, cross-domain coverage audit, and final evidence synthesis | [docs/project_05_computational_discovery.md](docs/project_05_computational_discovery.md) |
| Project VI — Scientific Validation | Validation roadmap and uncertainty inventory completed | Validation priorities, risk inventory, and roadmap for uncertainty propagation and literature comparison | [docs/project_06_scientific_validation.md](docs/project_06_scientific_validation.md) |

## Current Program Status

The repository has completed the transition into a six-project research-program structure. The major current emphasis is no longer directory restructuring; it is strengthening validation, uncertainty propagation, literature comparison, and scientific interpretation boundaries.

Current scientific focus:

- Preserve the 27-star candidate sample as the main follow-up target set.
- Use Project II orbit and angular-momentum diagnostics to prioritize dynamically unusual stars.
- Use Project III and Project IV outputs to organize population and metallicity follow-up.
- Use Project V clustering validation to separate computational recovery from physical interpretation.
- Use Project V cross-domain validation to distinguish support for the recovered known-candidate core from the still-unvalidated 8 additional GMM members.
- Use the Project V final synthesis as a follow-up prioritization handoff, not as a physical discovery claim.
- Use Project VI to plan Monte Carlo uncertainty propagation, potential-model sensitivity tests, and external literature or catalogue comparison.

## Key Results

| Result | Value | Context |
|---|---:|---|
| Project V discovery parent sample | 1,838 stars | Gaia-LAMOST larger chemo-kinematic feature table |
| Known cross-method candidates | 27 stars | Candidate set carried forward from earlier computational discovery |
| M2 GMM reference component | 32 members | Nine-component full-covariance GMM using five robust-scaled features |
| Known candidates recovered in reference component | 24 / 27 | M2 candidate-rich component |
| Additional non-candidate members in reference component | 8 stars | Newly grouped with the 24 known candidates by the M2 GMM |
| Baseline candidate enrichment | 51.06x | Candidate fraction in the reference component relative to the parent sample |
| M3 exact baseline reproduction | ARI = 1.000 | M2 labels reproduced by the locked M2 GMM configuration |
| M3 reference recovery | 32 / 32 | Exact recovery of the M2 reference component under the locked configuration |
| 30 random-seed tests | mean Jaccard = 0.7479 | Label-independent overlap with the 32-star reference component |
| 30 independent 80 percent subsamples | mean Jaccard = 0.6555 | Subsample-fit sensitivity test |
| Model-specification sensitivity | mean Jaccard = 0.715; minimum = 0.344 | Feature, scaler, component-count, and covariance checks |
| Per-star recovery: 24 reference candidates | mean selection frequency = 0.8786 | Across all Project V M3 validation runs |
| Per-star recovery: 8 additional members | mean selection frequency = 0.4131 | Less stable than the known-candidate core |
| Per-star recovery: 3 omitted candidates | mean selection frequency = 0.0569 | Usually remain outside the matched M2-like component |
| M4 cross-domain coverage: recovered known candidates | 24 / 24 | Project II/III/IV/VI candidate-level validation coverage |
| M4 cross-domain coverage: additional GMM members | 0 / 8 | No current candidate-level held-out orbital, population, chemical-readiness, or validation-risk coverage |
| M4 orbit-AM consistency: recovered known candidates | 21 / 24 consistent | Supports the known-candidate core, not the full 32-star component |

## Project V GMM Validation Conclusion

Project V Milestone 3 tested whether the M2 GMM candidate-enriched component is numerically reproducible and scientifically robust. The exact M2 configuration is:

- Features: `feh`, `rv`, `tangential_velocity_kms`, `bp_rp`, `absolute_g_mag`
- Preprocessing: `RobustScaler`
- Model: `GaussianMixture(n_components=9, covariance_type="full", n_init=5, random_state=42, reg_covar=1e-6)`
- Matching method: label-independent maximum Jaccard overlap with the 32-star M2 reference component

The candidate-enriched GMM component is exactly reproducible under the locked M2 configuration, but its membership changes under alternative sampling and modelling assumptions. It is therefore classified as **model-dependent** and retained as a follow-up prioritization signal rather than evidence of a physically distinct stellar population.

Project V Milestone 4 tested whether the same 32-star component is supported by information not used directly to fit the GMM. The recovered 24 known candidates have complete candidate-level cross-domain coverage and retain supporting orbital/population context. The 8 additional GMM members have no current held-out orbital, population, chemical-readiness, or validation-risk coverage, so the full 32-star component is **not yet cross-domain validated**.

Project V final synthesis closes the computational-discovery phase. The final classification is: **24 recovered candidates = partially supported candidate core; 8 additional members = inconclusive follow-up targets; full 32-star component = model-dependent and not physically validated**.

> **Computational recovery is not equivalent to physical discovery.**
>
> Physical interpretation still requires orbital coherence, detailed abundance information, uncertainty propagation, selection-function analysis, and external literature or catalogue comparison.

Primary GMM validation files:

- [Project V M3 report](report/project_v_milestone3_gmm_stability_sensitivity_validation.md)
- [Project V M3 notebook](notebooks/27_project_v_gmm_stability_sensitivity_validation.ipynb)
- [Project V M4 report](report/project_v_milestone4_gmm_cross_domain_validation.md)
- [Project V M4 notebook](notebooks/28_project_v_gmm_cross_domain_validation.ipynb)
- [Project V final synthesis report](report/project_v_final_scientific_synthesis.md)
- [Project V final synthesis notebook](notebooks/29_project_v_final_scientific_synthesis.ipynb)
- [M3 run summary](data/processed/project_v_m3_run_summary.csv)
- [M3 per-star stability](data/processed/project_v_m3_star_stability.csv)
- [M3 per-run per-star selections](data/processed/project_v_m3_star_stability_by_experiment.csv)
- [M3 group stability summary](data/processed/project_v_m3_group_stability_summary.csv)
- [M3 experiment summary](data/processed/project_v_m3_experiment_summary.csv)
- [M4 cross-domain membership table](data/processed/project_v_gmm_cross_domain_membership.csv)
- [M4 cross-domain evidence assessment](data/processed/project_v_gmm_cross_domain_evidence_assessment.csv)
- [Final key results](data/processed/project_v_final_key_results.csv)
- [Final evidence matrix](data/processed/project_v_final_evidence_matrix.csv)

## Main Outputs by Project

| Project | Representative Outputs |
|---|---|
| Project I — Data Foundation | [Candidate diagnostics](data/processed/gaia_lamost_candidate_diagnostic_table.csv), [larger chemo-kinematic features](data/processed/gaia_lamost_larger_chemo_kinematic_features.csv), [candidate summary](data/processed/gaia_lamost_candidate_summary_table.csv) |
| Project II — Orbital Dynamics | [Orbital-family candidates](data/processed/project_ii_orbital_family_candidates.csv), [galpy orbit candidates](data/processed/project_ii_galpy_orbit_candidates.csv), [orbit-AM consistency](data/processed/project_ii_orbit_angular_momentum_consistency.csv), [baseline orbit report](report/project_ii_galpy_baseline_orbit_integration.md) |
| Project III — Stellar Population Analysis | [Population candidates](data/processed/project_iii_population_candidates.csv), [priority candidates](data/processed/project_iii_population_priority_candidates.csv), [classification report](report/project_iii_initial_population_classification.md), [priority review](report/project_iii_population_classification_review.md) |
| Project IV — Chemical Evolution | [Metallicity candidates](data/processed/project_iv_metallicity_candidates.csv), [metallicity summary](data/processed/project_iv_metallicity_summary.csv), [chemical-readiness report](report/project_iv_metallicity_structure_and_chemical_readiness.md) |
| Project V — Computational Discovery | [Cross-method candidate summary](data/processed/project_v_candidate_cross_method_summary.csv), [M2 GMM assignments](data/processed/project_v_m2_cluster_assignments.csv), [M3 run summary](data/processed/project_v_m3_run_summary.csv), [M4 membership](data/processed/project_v_gmm_cross_domain_membership.csv), [final evidence matrix](data/processed/project_v_final_evidence_matrix.csv), [final synthesis report](report/project_v_final_scientific_synthesis.md) |
| Project VI — Scientific Validation | [Uncertainty inventory](data/processed/project_vi_uncertainty_inventory.csv), [validation priority candidates](data/processed/project_vi_validation_priority_candidates.csv), [validation report](report/project_vi_validation_uncertainty_inventory.md) |

Additional indexes:

- [Notebook index](notebooks/README.md)
- [Processed data index](data/processed/README.md)
- [Figure index](figures/README.md)
- [Report index](report/README.md)
- [Development log](docs/dev_log.md)

## Repository Structure

```text
gaia-lamost-galactic-archaeology/
├── data/
│   ├── raw/
│   ├── processed/
│   └── external/
├── docs/
├── figures/
├── notebooks/
├── report/
├── src/
├── requirements.txt
└── README.md
```

The repository intentionally keeps a compact, flat research layout. Notebook outputs, processed tables, figures, and reports are indexed separately so that the workflow remains traceable without hiding the analysis behind premature packaging.

## Reproducibility Workflow

The workflow is notebook-led and report-backed:

1. Run the relevant notebook from `notebooks/`.
2. Write processed tables to `data/processed/`.
3. Save diagnostic figures to `figures/`.
4. Document scientific interpretation, limitations, and next steps in `report/`.
5. Record project-level status in `docs/`.

For environment setup, install the dependencies listed in [requirements.txt](requirements.txt). Most analyses use Python scientific packages including `pandas`, `numpy`, `matplotlib`, `scikit-learn`, `astropy`, `astroquery`, `umap-learn`, `hdbscan`, `galpy`, and `jupyter`.

## Scientific Interpretation Boundary

This repository is designed to make the distinction between computational evidence and astrophysical interpretation explicit.

Current results support the following cautious claims:

- The candidate sample is rich in dynamically hot, halo-like, retrograde, radial, or high-inclination behavior under current baseline assumptions.
- The Project V M2 GMM candidate-enriched component is exactly reproducible under its locked configuration.
- The same GMM structure is sensitive to sampling and modelling choices, so it should guide follow-up rather than define a confirmed stellar population.
- Cross-domain validation currently supports the recovered known-candidate core, while the 8 additional GMM members remain unvalidated follow-up targets because held-out coverage is missing.
- Project V is complete as a computational-discovery synthesis; physical validation remains open in Project VI.
- Current chemistry is mostly limited to [Fe/H]; detailed abundance tagging has not yet been completed.
- Orbit and population interpretations still require uncertainty propagation, potential-model sensitivity, selection-function analysis, and literature comparison.

Claims that are intentionally not made at this stage:

- No new physically distinct stellar population is claimed.
- No firm membership assignment to Gaia-Sausage-Enceladus, Sequoia, Helmi Stream, Nyx, Splash, or another named structure is claimed.
- No publication-grade orbit solution is claimed before uncertainty propagation and potential-model sensitivity testing.

## Long-Term Deliverables

The long-term research program aims to produce:

- Candidate Catalog
- Orbit Catalog
- Population Catalog
- Chemical Catalog
- Computational Discovery Catalog
- Scientific Validation Report
- Publication-quality figures and manuscript-style tables
- A reproducible computational workflow
- A manuscript-style synthesis suitable for later refinement toward A&A- or MNRAS-style presentation

## License and Usage

No repository license file is currently present. Until a license is added, reuse should be treated as not formally licensed. The repository is maintained as a personal independent research portfolio with reproducible notebooks, generated data products, figures, and reports for scientific review and follow-up development.
