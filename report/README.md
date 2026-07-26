# Report

This folder contains research-style writeups for the Gaia–LAMOST Galactic Archaeology Project.

## Purpose

The report is intended to summarize the project in a clear academic format, including the research motivation, data sources, methodology, results, limitations, and future work.

## Planned Structure

1. Introduction
2. Data
3. Methodology
4. Results
5. Discussion
6. Limitations
7. Future Work
8. References

## Current Status

The report is under development and will be updated as the project progresses.

## Notes

The report should focus on explaining the scientific workflow and preliminary findings rather than presenting the project as a finished research paper.

Figures generated during the project should be referenced and discussed in the report when relevant.

## Project 1 Report Status

Project 1 currently includes two main report files:

- `project1_final_report_draft.md`
- `project1_milestone7_scientific_interpretation_draft.md`

The final report draft is the main presentation document for Project 1. It summarizes the data sources, analysis workflow, diagnostic figures, candidate selection logic, scientific interpretation, limitations, and future directions.

The Milestone 7 scientific interpretation draft records the interpretation stage before final packaging. It is kept as a development-stage document for traceability.

Project 1 should be read as an exploratory but reproducible research portfolio project. The current reports do not claim a definitive discovery of new Galactic substructure. Instead, they demonstrate a complete workflow for combining Gaia astrometry and photometry with LAMOST spectroscopy to identify and interpret candidate chemo-kinematic outliers.

Future reports for Project 2 and Project 3 will build on this foundation with machine-learning clustering, stronger population classification, orbital analysis, and comparison with known Galactic substructures.


## Project 2 Report Status

Project 2 includes one main final packaging report:

- `project2_scientific_interpretation_and_final_packaging.md`

This report summarizes the machine-learning assisted candidate-prioritization workflow developed after Project 1. It covers feature-space design, PCA baseline diagnostics, UMAP nonlinear embeddings, DBSCAN baseline clustering, DBSCAN robustness checks, and candidate-level cross-method evidence integration.

Project 2 should be read as an exploratory but reproducible machine-learning extension of the Gaia–LAMOST workflow. It does not claim a definitive discovery of a new Galactic substructure. Instead, it identifies evidence-ranked chemo-dynamical follow-up targets that can be tested more rigorously in Project 3 through orbital characterization and comparison with known Milky Way substructures.

## Project 3 reports

- `project3_milestone1_orbital_characterization_setup.md`  
  Defines the Project 3 orbit-analysis setup, candidate inputs, required orbital features, quality-control checks, and the Milestone 2 orbit-input preparation plan.

- `project3_milestone2_orbit_input_preparation.md` — prepares the candidate-level orbit input table and summarizes orbit-readiness based on astrometric, radial-velocity, and Galactocentric velocity fields.



- `project3_milestone3_orbital_diagnostics_preparation.md` — Project 3 M3 report describing readiness-aware orbital diagnostics, velocity-space diagnostics, and the distance/parallax limitation preventing physical angular-momentum calculation.


- `project3_milestone4_distance_parallax_recovery.md` — Documents Project 3 M4 parallax/distance recovery and readiness for later angular-momentum diagnostics.

- `project3_milestone5_angular_momentum_diagnostics.md` — Documents Project 3 Milestone 5 angular-momentum calculation and diagnostic interpretation.

- `project_ii_orbital_family_interpretation.md` — Project II orbital-family interpretation report using angular momentum, velocity diagnostics, metallicity flags, and distance provenance to assign candidate-level orbital-family interpretation labels.


- `project_ii_galpy_baseline_orbit_integration.md` — Documents the first Project II baseline orbit integration with `galpy`, including orbital parameters, diagnostic counts, limitations, and next steps.


- `project_ii_orbit_angular_momentum_consistency.md` — Documents the Project II consistency analysis between angular-momentum orbital-family interpretation and baseline galpy orbit-integration results.


- `project_iii_initial_population_classification.md` — Documents the initial Project III stellar-population classification, including radial halo or GSE-like candidates, retrograde halo candidates, high-inclination halo candidates, prograde hot or heated-disk candidates, and retrograde uncertain candidates.


- `project_iii_population_classification_review.md` — Reviews Project III population classifications and defines priority tiers for candidate follow-up.


- `project_iv_metallicity_structure_and_chemical_readiness.md` — Documents Project IV metallicity structure and chemical-readiness analysis based on available [Fe/H] information.


- `project_vi_validation_uncertainty_inventory.md` — Documents the Project VI validation roadmap, uncertainty inventory, and candidate-level validation priorities.

## Project V reports

- `project_v_milestone1_advanced_clustering_readiness.md` — Defines and audits the 1,838-star discovery parent sample, core and extended feature spaces, robust-scaling strategy, known-candidate recovery control, and readiness for HDBSCAN, OPTICS, and Gaussian Mixture Model comparison.
