- `project3_distance_recovered_candidates.csv` — Project 3 candidate table after merging recovered parallax/distance fields from existing processed Gaia–LAMOST tables.
- `project3_distance_recovery_summary.csv` — One-row summary of Project 3 distance/parallax recovery coverage and angular-momentum readiness.

- `project3_angular_momentum_candidates.csv` — Candidate-level Project 3 angular-momentum diagnostics computed from distance-recovered inputs.
- `project3_angular_momentum_summary.csv` — Summary statistics and simple diagnostic class counts for Project 3 angular-momentum analysis.

- `project_ii_orbital_family_candidates.csv` — Candidate-level Project II orbital-family interpretation table, including interpretation labels, confidence flags, angular-momentum diagnostics, velocity evidence, metallicity evidence, and distance provenance.
- `project_ii_orbital_family_summary.csv` — Summary table of Project II orbital-family interpretation groups, including counts and median metallicity, velocity, and angular-momentum diagnostics.


- `project_ii_galpy_orbit_candidates.csv` — Candidate-level Project II baseline orbit-integration table, including galpy eccentricity, pericenter, apocenter, Zmax, energy proxy, and orbit-derived diagnostic flags.
- `project_ii_galpy_orbit_summary.csv` — Summary table of Project II baseline orbit-integration results grouped by orbital-family interpretation, rotation class, and inclination proxy.


- `project_ii_orbit_angular_momentum_consistency.csv` — Candidate-level Project II consistency table comparing angular-momentum interpretation labels with baseline galpy orbit-derived diagnostics.
- `project_ii_orbit_angular_momentum_consistency_summary.csv` — Summary table of Project II orbit-angular-momentum consistency groups, including counts and median orbit, metallicity, and angular-momentum diagnostics.


- `project_iii_population_candidates.csv` — Candidate-level Project III initial stellar-population classification table with population labels, population groups, confidence tags, orbit diagnostics, angular-momentum diagnostics, metallicity, and supporting evidence notes.
- `project_iii_population_summary.csv` — Summary table of Project III initial stellar-population groups, including counts and median metallicity, eccentricity, Zmax, pericenter, apocenter, Lz, and Lperp.


- `project_iii_population_priority_candidates.csv` — Candidate-level Project III priority table ranking population candidates for later literature comparison, chemical interpretation, and uncertainty propagation.
- `project_iii_population_review_summary.csv` — Summary table of Project III priority tiers by population group, including median score, metallicity, eccentricity, Zmax, Lz, and Lperp.


- `project_iv_metallicity_candidates.csv` — Candidate-level Project IV metallicity and chemical-readiness table, including metallicity classes, chemical follow-up priorities, Project III population labels, and orbit diagnostics.
- `project_iv_metallicity_summary.csv` — Summary table of Project IV metallicity classes and chemical follow-up priorities across Project III population groups.


- `project_vi_uncertainty_inventory.csv` — Candidate-level Project VI uncertainty inventory, tracking validation risk, validation priority, population evidence, chemical readiness, orbit diagnostics, and distance provenance.
- `project_vi_validation_priority_candidates.csv` — Project VI validation-priority table ranking candidates for later Monte Carlo uncertainty propagation and literature comparison.

- `project_v_advanced_clustering_feature_audit.csv` — Feature-level completeness, distribution, scaling, and clustering-role audit for the Project V core and extended feature spaces.
- `project_v_core_feature_correlations.csv` — Pearson correlation matrix for the five Project V core clustering features.
- `project_v_advanced_clustering_readiness_summary.csv` — Project V parent-sample integrity, candidate-recovery coverage, algorithm availability, and preprocessing summary.

## Project V Milestone 2

- `project_v_m2_blind_model_selection.csv` — Complete blind HDBSCAN, OPTICS, and
  GMM model-comparison grid.
- `project_v_m2_locked_model_summary.csv` — Locked model parameters and internal
  clustering statistics.
- `project_v_m2_cluster_assignments.csv` — Per-star locked-model assignments and
  GMM maximum-membership probabilities.
- `project_v_m2_candidate_recovery_by_group.csv` — Candidate counts, recall, and
  enrichment for every recovered group.
- `project_v_m2_candidate_recovery_summary.csv` — Algorithm-level candidate
  recovery comparison.

## Project V Milestone 3

- `project_v_m3_run_summary.csv` — Per-run GMM stability and sensitivity metrics,
  including ARI versus M2, matched-component Jaccard overlap, reference recall,
  candidate fraction, and candidate enrichment.
- `project_v_m3_star_stability.csv` — Per-star selection frequency across all M3
  validation runs, with flags for the 24 M2 reference candidates, 8 M2 new
  members, and 3 M2 omitted candidates.
- `project_v_m3_star_stability_by_experiment.csv` — Per-run, per-star matched
  component selections, labels, and probabilities for every M3 validation run.
- `project_v_m3_group_stability_summary.csv` — Group-level recovery-frequency
  summary for reference candidates, new members, omitted candidates, and field
  stars.
- `project_v_m3_experiment_summary.csv` — Validation-family summary for random
  seeds, 80 percent subsamples, feature ablations, scalers, component counts, and
  covariance types.
