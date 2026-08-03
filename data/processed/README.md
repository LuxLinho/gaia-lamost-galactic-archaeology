- `project_ii_distance_recovered_candidates.csv` — Project II candidate table after merging recovered parallax/distance fields from existing processed Gaia–LAMOST tables.
- `project_ii_distance_recovery_summary.csv` — One-row summary of Project II distance/parallax recovery coverage and angular-momentum readiness.

- `project_ii_angular_momentum_candidates.csv` — Candidate-level Project II angular-momentum diagnostics computed from distance-recovered inputs.
- `project_ii_angular_momentum_summary.csv` — Summary statistics and simple diagnostic class counts for Project II angular-momentum analysis.

- `project_ii_orbital_family_candidates.csv` — Candidate-level Project II orbital-family interpretation table, including interpretation labels, confidence flags, angular-momentum diagnostics, velocity evidence, metallicity evidence, and distance provenance.
- `project_ii_orbital_family_summary.csv` — Summary table of Project II orbital-family interpretation groups, including counts and median metallicity, velocity, and angular-momentum diagnostics.


- `project_ii_galpy_orbit_candidates.csv` — Candidate-level Project II baseline orbit-integration table, including galpy eccentricity, pericenter, apocenter, Zmax, energy proxy, and orbit-derived diagnostic flags.
- `project_ii_galpy_orbit_summary.csv` — Summary table of Project II baseline orbit-integration results grouped by orbital-family interpretation, rotation class, and inclination proxy.


- `project_ii_orbit_angular_momentum_consistency.csv` — Candidate-level Project II consistency table comparing angular-momentum interpretation labels with baseline galpy orbit-derived diagnostics.
- `project_ii_orbit_angular_momentum_consistency_summary.csv` — Summary table of Project II orbit-angular-momentum consistency groups, including counts and median orbit, metallicity, and angular-momentum diagnostics.

- `project_ii_additional_gmm_member_gaia_dr3_query.csv` — Gaia DR3 TAP query
  result for the 8 Project V additional GMM members, used to supplement
  astrometric uncertainties, correlations, RUWE, and Gaia radial-velocity errors
  where available.
- `project_ii_additional_gmm_member_gaia_dr3_query.sql` — Reproducible ADQL query
  used for the 8 additional GMM members.
- `project_ii_additional_gmm_member_input_audit.csv` — Source-level provenance and
  input-completeness audit for the 8 additional GMM members.
- `project_ii_additional_gmm_member_orbits.csv` — Star-level orbital diagnostics
  for the 24 recovered known candidates, 8 additional GMM members, and 3 omitted
  candidates.
- `project_ii_additional_gmm_member_group_summary.csv` — Group-level comparison
  of selection frequency, angular momentum, baseline orbit metrics, and evidence
  classes.
- `project_ii_additional_gmm_member_coverage_summary.csv` — Coverage summary by
  group for 5D astrometry, radial velocity, usable distance, 6D phase space,
  angular momentum, and integrated orbit metrics.
- `project_ii_additional_gmm_member_evidence_assessment.csv` — Compact evidence
  assessment and final Project II classification for the additional-member
  follow-up.


- `project_iii_population_candidates.csv` — Candidate-level Project III initial stellar-population classification table with population labels, population groups, confidence tags, orbit diagnostics, angular-momentum diagnostics, metallicity, and supporting evidence notes.
- `project_iii_population_summary.csv` — Summary table of Project III initial stellar-population groups, including counts and median metallicity, eccentricity, Zmax, pericenter, apocenter, Lz, and Lperp.


- `project_iii_population_priority_candidates.csv` — Candidate-level Project III priority table ranking population candidates for later literature comparison, chemical interpretation, and uncertainty propagation.
- `project_iii_population_review_summary.csv` — Summary table of Project III priority tiers by population group, including median score, metallicity, eccentricity, Zmax, Lz, and Lperp.


- `project_iv_metallicity_candidates.csv` — Candidate-level Project IV metallicity and chemical-readiness table, including metallicity classes, chemical follow-up priorities, Project III population labels, and orbit diagnostics.
- `project_iv_metallicity_summary.csv` — Summary table of Project IV metallicity classes and chemical follow-up priorities across Project III population groups.


- `project_vi_uncertainty_inventory.csv` — Candidate-level Project VI uncertainty inventory, tracking validation risk, validation priority, population evidence, chemical readiness, orbit diagnostics, and distance provenance.
- `project_vi_validation_priority_candidates.csv` — Project VI validation-priority table ranking candidates for later Monte Carlo uncertainty propagation and literature comparison.
- `project_vi_mc_prototype_candidate_uncertainties.csv` — Candidate-level
  Project VI small-scale Monte Carlo prototype summary for the two
  `validation_priority_A` targets, including measured-derived parallax
  uncertainty provenance, missing uncertainty flags, and median/p16/p84 orbit
  quantities.
- `project_vi_mc_prototype_draw_summary.csv` — Per-draw Project VI Monte Carlo
  prototype table for 200 parallax-only draws per priority-A target, with
  fixed proper motion and radial velocity.
- `project_vi_priority_a_covariance_inputs.csv` — Covariance-ready Project VI
  input table for the two `validation_priority_A` targets, containing Gaia DR3
  astrometric central values, standard uncertainties, correlation coefficients,
  quality fields, RV provenance, and covariance-matrix checks.
- `project_vi_priority_a_field_inventory.csv` — Field-level Project VI audit
  recording source table, availability, value, unit, provenance, missingness,
  and intended MC role for requested Gaia and LAMOST uncertainty inputs.
- `project_vi_correlated_mc_draws.csv` — Per-draw Project VI Priority-A
  correlated astrometric Monte Carlo table for 200 draws per target, jointly
  sampling Gaia parallax, pmra, and pmdec with fixed RA, Dec, and LAMOST radial
  velocity.
- `project_vi_correlated_mc_candidate_summary.csv` — Candidate-level Project VI
  correlated MC summary with median/p16/p84 orbit quantities and diagnostic
  threshold probabilities.
- `project_vi_correlated_mc_mode_comparison.csv` — Comparison between the
  parallax-only prototype and the correlated astrometric, RV-fixed mode,
  including median shifts, interval widths, and success fractions.

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

## Project V Milestone 4

- `project_v_gmm_cross_domain_membership.csv` — Parent-sample star-level table
  combining M2 GMM membership, M3 selection frequency, and available Project
  II/III/IV/VI candidate-level validation fields.
- `project_v_gmm_cross_domain_coverage_summary.csv` — Coverage audit by validation
  domain and M4 group, including the 24 recovered known candidates, 8 additional
  GMM members, 3 omitted known candidates, and parent comparison stars.
- `project_v_gmm_cross_domain_group_summary.csv` — Long-format group summaries for
  selection frequency, orbital diagnostics, population labels, metallicity classes,
  validation-risk labels, and distance-quality flags.
- `project_v_gmm_cross_domain_statistics.csv` — Exploratory statistics comparing
  recovered and omitted known candidates and relating M3 selection frequency to
  held-out candidate-level diagnostics.
- `project_v_gmm_cross_domain_evidence_assessment.csv` — Domain-level evidence
  assessment and final classification for M4 cross-domain validation.

## Project V Final Synthesis

- `project_v_final_key_results.csv` — Final Project V key numerical results
  table, with each value tied back to the source CSV used for verification.
- `project_v_final_evidence_matrix.csv` — Final evidence matrix for the parent
  sample, 27 known candidates, 24 recovered candidate core, 8 additional GMM
  members, 3 omitted candidates, and the full 32-star reference component.
