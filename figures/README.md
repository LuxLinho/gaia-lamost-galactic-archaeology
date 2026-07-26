# Figures

This folder stores generated figures and visual outputs for the Gaia–LAMOST Galactic Archaeology Project.

## Purpose

Figures are used to document exploratory analysis, validate data quality, and present preliminary scientific results.

## Expected Figure Types

- Sky distribution plots
- Color-magnitude diagrams
- Distance and parallax distributions
- Proper motion distributions
- Metallicity distributions
- Chemo-kinematic visualizations
- Clustering and dimensionality reduction outputs

## Naming Convention

Figure files should use clear and descriptive names, for example:

    gaia_dr3_cmd.png
    gaia_lamost_distance_distribution.png
    metallicity_distribution.png
    velocity_feature_space.png
    clustering_umap_projection.png

## Notes

Generated figures should be linked or discussed in milestone notes, development logs, or the final research-style report.

Large or temporary figures should be avoided unless they are directly relevant to the project documentation.


## Project V Figures

Project V adds machine-learning diagnostic figures, including:

```text
project_v_pca_combined_chemo_kinematic_by_feh.png
project_v_pca_combined_chemo_kinematic_by_vtot.png
project_v_pca_combined_chemo_kinematic_candidates.png
project_v_umap_combined_chemo_kinematic_by_feh.png
project_v_umap_combined_chemo_kinematic_by_vtot.png
project_v_umap_combined_chemo_kinematic_candidates.png
project_v_pca_dbscan_candidate_overlay.png
project_v_umap_dbscan_candidate_overlay.png
project_v_umap_dbscan_clusters.png
project_v_candidate_cross_method_evidence_summary.png
```

These figures should be interpreted as diagnostic visualizations for candidate prioritization. PCA and UMAP show how candidate stars appear in different embedding spaces, while DBSCAN overlays and cross-method evidence plots summarize whether candidates remain interesting across multiple unsupervised views.

The figures are not standalone discovery evidence. They are supporting diagnostics for the Project V scientific interpretation and final packaging report.

- `project_ii_orbital_diagnostics_velocity_summary.png` — Project II velocity-space diagnostic plot comparing tangential velocity and Galactocentric total velocity.
- `project_ii_orbital_diagnostics_feh_velocity.png` — Project II metallicity versus Galactocentric total velocity diagnostic plot.
- `project_ii_orbital_diagnostics_readiness_summary.png` — Project II orbital-readiness summary showing available velocity inputs and missing angular-momentum position inputs.


- `project_ii_angular_momentum_lz_lperp.png` — Project II angular-momentum diagnostic comparing Lz and Lperp.
- `project_ii_angular_momentum_lz_ltot.png` — Project II angular-momentum diagnostic comparing Lz and Ltot.
- `project_ii_angular_momentum_feh_lz.png` — Project II metallicity versus Lz diagnostic plot.

- `project_ii_galpy_orbit_eccentricity.png` — Project II baseline galpy orbit-integration eccentricity distribution for the candidate sample.
- `project_ii_galpy_orbit_zmax.png` — Project II baseline galpy orbit-integration Zmax distribution for the candidate sample.
- `project_ii_galpy_orbit_rap_rperi.png` — Project II baseline galpy orbit-integration apocenter versus pericenter diagnostic plot.


- `project_ii_orbit_eccentricity_vs_lz.png` — Project II consistency diagnostic comparing galpy eccentricity with Lz angular momentum.
- `project_ii_orbit_zmax_vs_lperp.png` — Project II consistency diagnostic comparing galpy Zmax with Lperp angular momentum.
- `project_ii_orbit_family_consistency.png` — Project II consistency-count diagnostic for angular-momentum labels versus orbit-integrated behavior.


- `project_iii_population_counts.png` — Project III initial population-group count diagnostic figure.
- `project_iii_population_feh_eccentricity.png` — Project III metallicity versus galpy eccentricity diagnostic figure by initial population group.
- `project_iii_population_lz_zmax.png` — Project III Lz versus Zmax diagnostic figure by initial population group.


- `project_iv_feh_distribution.png` — Project IV [Fe/H] distribution for the candidate sample.
- `project_iv_feh_by_population_group.png` — Project IV [Fe/H] comparison across Project III population groups.
- `project_iv_feh_by_priority_tier.png` — Project IV [Fe/H] comparison across Project III priority tiers.

- `project_v_advanced_clustering_feature_audit.png` — Project V diagnostic figure showing the five core-feature distributions and their correlation matrix.

- `project_v_m2_model_selection.png` — Blind HDBSCAN, OPTICS, and GMM model-selection
  diagnostics.
- `project_v_m2_locked_clustering_candidate_recovery.png` — PCA visualization of
  locked cluster assignments with the 27 external candidates overlaid.

- `project_v_m3_validation_summary.png` — M3 summary of reference recall, Jaccard
  overlap, candidate enrichment, and matched-component size across validation
  families.
- `project_v_m3_per_star_recovery.png` — Per-star recovery frequencies for the 24
  M2 reference candidates, 8 M2 new members, and 3 M2 omitted candidates.
- `project_v_m3_model_specification_sensitivity.png` — GMM feature, scaler,
  component-count, and covariance sensitivity diagnostics.
