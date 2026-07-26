# Project V Milestone 3: GMM Stability and Sensitivity Validation

## Purpose

This milestone tests whether the Project V M2 GMM component enriched in external candidates is numerically stable and how strongly it depends on modeling choices. The M2 outputs are not modified. Every perturbed model is matched to the M2 reference component with a label-independent maximum Jaccard overlap against the 32-star M2 reference set.

## M2 Baseline Reproduction

The code-level M2 baseline is `RobustScaler` on `feh`, `rv`, `tangential_velocity_kms`, `bp_rp`, and `absolute_g_mag`, followed by `GaussianMixture(n_components=9, covariance_type=full, n_init=5, random_state=42, reg_covar=1e-6)`. Re-running that specification reproduced the M2 labels with Adjusted Rand Index 1.000000. The 32-star reference component was recovered exactly.

The reference component contains 24 of the 27 known Project II candidates and 8 non-candidate stars newly grouped with them by M2. The remaining 3 known candidates fall in M2 GMM component 7.

## Validation Design

The validation suite includes 82 total GMM fits: 30 random-seed runs, 30 independent 80 percent no-replacement subsample fits, five one-feature ablations, five scaling choices, seven component-count choices from 6 to 12, and four covariance structures. For each run, the matched component is selected by maximum Jaccard overlap with the 32-star M2 reference component, avoiding any dependence on arbitrary GMM label numbering.

## Main Results

Random-seed stability is strong: mean Jaccard overlap is 0.748, minimum Jaccard overlap is 0.344, mean reference recall is 0.776, and mean candidate enrichment is 57.63x.

The 80 percent subsample test is less exact but still recovers much of the M2 structure: mean Jaccard overlap is 0.656, minimum Jaccard overlap is 0.344, mean reference recall is 0.728, and mean candidate enrichment is 51.96x.

Across feature, scaler, component-count, and covariance sensitivity runs, the matched structure is model-setting dependent: mean Jaccard overlap is 0.715, minimum Jaccard overlap is 0.344, mean reference recall is 0.780, and mean candidate enrichment is 53.31x.

## Per-Star Stability

The group-level stability table shows that the 24 M2 reference candidates have mean selection frequency 0.879. The 8 M2 new members have mean selection frequency 0.413. The 3 M2 omitted candidates have mean selection frequency 0.057, which confirms that the matched M2-like component usually remains distinct from the component-7 candidate residuals.

## Interpretation

The M2 51.06x candidate enrichment is best described as **model-setting dependent rather than universally stable**. It is computationally reproducible under the exact M2 configuration and robust to many random initializations, but it weakens or changes under subsampling and under some reasonable specification changes. This means the M2 component is a useful candidate-rich chemo-kinematic signal for follow-up prioritization, not proof of a physically real stellar substructure by itself.

The scientific interpretation should therefore separate two claims. The computational claim is strong for exact reproducibility and random-seed stability. The physical claim remains provisional and requires independent validation with orbital actions, abundances beyond `[Fe/H]`, selection-function checks, and external spectroscopy.

## Outputs

- `data/processed/project_v_m3_run_summary.csv`
- `data/processed/project_v_m3_star_stability.csv`
- `data/processed/project_v_m3_star_stability_by_experiment.csv`
- `data/processed/project_v_m3_group_stability_summary.csv`
- `data/processed/project_v_m3_experiment_summary.csv`
- `figures/project_v_m3_validation_summary.png`
- `figures/project_v_m3_per_star_recovery.png`
- `figures/project_v_m3_model_specification_sensitivity.png`
