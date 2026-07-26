# Notebooks

This folder contains exploratory and analysis notebooks for the Gaia–LAMOST Galactic Archaeology Project.

## Purpose

The notebooks document the main scientific workflow, including data querying, catalogue exploration, cross-matching, feature construction, visualization, candidate diagnostics, and machine-learning assisted population analysis.

## Notebook Organization

The notebooks are organized by project stage and milestone.

### Project 1: Gaia–LAMOST chemo-kinematic pipeline

```text
01_gaia_dr3_query.ipynb
02_lamost_catalogue_exploration.ipynb
03_chemo_kinematic_features.ipynb
04_larger_sample_kinematic_preparation.ipynb
05_galactic_velocity_candidate_validation.ipynb
06_candidate_level_diagnostics.ipynb
```

Project 1 builds the core Gaia–LAMOST workflow: Gaia DR3 query, LAMOST exploration, cross-matching, feature construction, larger-sample preparation, and candidate-level physical diagnostics.

### Project 2: Machine-learning assisted candidate prioritization

```text
07_project2_feature_space_design.ipynb
08_project2_pca_baseline_embedding.ipynb
09_project2_umap_embedding.ipynb
10_project2_dbscan_baseline_clustering.ipynb
11_project2_dbscan_robustness_analysis.ipynb
12_project2_candidate_cross_method_summary.ipynb
```

Project 2 extends the pipeline with feature-space design, PCA, UMAP, DBSCAN, robustness checks, and cross-method candidate evidence summaries.

## Notes

Notebooks are used for exploration, validation, figure generation, and milestone-level reproducibility.

Reusable functions and stable analysis code may gradually be moved into the `src/` folder in later stages to improve reproducibility and maintainability.

## Recommended Practice

Each notebook should include:

- a short goal at the beginning
- clear section headings
- comments explaining important steps
- saved outputs when relevant
- links to related milestone notes, reports, or figures

- `14_project_ii_orbital_diagnostics_preparation.ipynb` — Prepares Project 3 readiness-aware orbital diagnostics, preserving velocity-space diagnostics and documenting missing distance/parallax input required for angular-momentum analysis.


- `15_project_ii_distance_parallax_recovery.ipynb` — Recovers Gaia parallax/distance information for Project 3 candidates and prepares distance-ready inputs for angular-momentum analysis.

- `16_project_ii_angular_momentum_diagnostics.ipynb` — Computes Project 3 Galactocentric angular-momentum diagnostics from distance-recovered candidates, including Lz, Lperp, and Ltot.

- `19_project_ii_galpy_baseline_orbit_integration.ipynb` — Runs the first Project II baseline orbit integration with `galpy` and `MWPotential2014`, producing eccentricity, pericenter, apocenter, Zmax, and orbit-level diagnostic outputs.


- `20_project_ii_orbit_angular_momentum_consistency.ipynb` — Compares Project II angular-momentum-based orbital-family labels with baseline `galpy` orbit-derived eccentricity, pericenter, apocenter, and Zmax diagnostics.


- `21_project_iii_initial_population_classification.ipynb` — Assigns first-pass Project III stellar-population interpretation labels using Project II angular-momentum diagnostics, baseline galpy orbit parameters, metallicity, and consistency evidence.


- `22_project_iii_population_classification_review.ipynb` — Reviews Project III initial population labels and identifies priority candidates for later literature comparison, chemical interpretation, and uncertainty propagation.


- `23_project_iv_metallicity_structure_and_chemical_readiness.ipynb` — Reviews Project IV chemical readiness using the currently available [Fe/H] information and summarizes metallicity structure across Project III population groups.


- `24_project_vi_validation_uncertainty_inventory.ipynb` — Reviews Project VI validation priorities and uncertainty inventory for the current Gaia-LAMOST candidate sample.

- `25_project_v_advanced_clustering_readiness_and_feature_audit.ipynb` — Defines the 1,838-star Project V discovery parent sample, audits core and extended feature spaces, verifies external recovery coverage for the 27 known candidates, and records preprocessing decisions for advanced clustering.

- `26_project_v_advanced_clustering_baseline_comparison.ipynb` — Performs blind
  advanced-clustering model selection and evaluates locked HDBSCAN, OPTICS, and GMM
  assignments against the external 27-star candidate catalogue.

- `27_project_v_gmm_stability_sensitivity_validation.ipynb` — Validates the M2
  nine-component full-covariance GMM with exact baseline reproduction,
  label-independent Jaccard component matching, random-seed tests, 80 percent
  subsampling, feature ablations, scaler comparisons, component-count sensitivity,
  and covariance-structure sensitivity.
