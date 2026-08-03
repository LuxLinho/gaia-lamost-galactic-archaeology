# Project VI - Priority-A Correlated Astrometric Monte Carlo

## Scope

This report documents a two-candidate correlated astrometric Monte Carlo for Project VI. The mode is `correlated_gaia_astrometry_rv_fixed`. It propagates Gaia DR3 `parallax`, `pmra`, and `pmdec` jointly using the retrieved Gaia correlation coefficients and standard uncertainties. RA, Dec, and the LAMOST radial-velocity central value are fixed.

This is not a complete observational uncertainty validation. It does not propagate RA/Dec uncertainty, it does not use Gaia radial-velocity uncertainty, and it does not invent LAMOST RV uncertainty.

## Inputs and Covariance

Variable order:

```text
parallax_mas, pmra_masyr, pmdec_masyr
```

The covariance matrix uses `cov(i,j) = corr(i,j) * sigma_i * sigma_j`. The covariance matrices are read from `data/processed/project_vi_priority_a_covariance_inputs.csv` and verified against the saved covariance elements before drawing.

Random seed: `20260804`. Requested draws per candidate: `200`.

## Results

Values are median [p16, p84].

| source_id | success_fraction | Lz | Lperp | eccentricity | rperi_kpc | rap_kpc | Zmax_kpc |
|:--|--:|--:|--:|--:|--:|--:|--:|
| 3089534353001157632 | 1.000 | 464.953 [331.821, 621.956] | 1302.09 [1246.7, 1367.72] | 0.837566 [0.814488, 0.864322] | 1.92408 [1.48241, 2.43444] | 21.8276 [20.3056, 23.9412] | 17.7315 [16.9653, 18.8798] |
| 3089847099636770560 | 1.000 | -958.468 [-1003.25, -908.165] | 3539.91 [3392.67, 3703.17] | 0.711219 [0.669811, 0.754751] | 9.39065 [9.34705, 9.44262] | 55.6382 [47.2675, 67.5643] | 53.4087 [44.7568, 65.471] |

## Diagnostic Threshold Probabilities

These thresholds are diagnostic only. The `Lz` thresholds trace the existing simple Project II rotation-class rule (`Lz > 500`, `Lz < -500`, otherwise low-Lz/radial), while `ecc >= 0.7` and `Zmax > 3 kpc` follow Project II orbit-diagnostic thresholds. They are not new classification definitions.

| source_id | P(Lz<0) | P(Lz<-500) | P(Lz<500) | P(Lz>500) | P(abs(Lz)<500) | P(ecc>=0.7) | P(Zmax>3kpc) |
|:--|--:|--:|--:|--:|--:|--:|--:|
| 3089534353001157632 | 0.000 | 0.000 | 0.615 | 0.385 | 0.615 | 1.000 | 1.000 |
| 3089847099636770560 | 1.000 | 1.000 | 1.000 | 0.000 | 0.000 | 0.580 | 1.000 |

## Comparison with Parallax-Only Prototype

The correlated mode adds Gaia proper-motion uncertainty and the Gaia parallax/proper-motion correlation structure relative to the earlier `measured_only_parallax` prototype. It does not change the RV treatment.

| source_id | metric | baseline width | correlated width | width ratio | median shift |
|:--|:--|--:|--:|--:|--:|
| 3089534353001157632 | Lz | 260.763 | 290.135 | 1.113 | 16.1376 |
| 3089534353001157632 | Lperp | 107.708 | 121.024 | 1.124 | 7.37332 |
| 3089534353001157632 | eccentricity | 0.0507604 | 0.0498339 | 0.982 | -0.00136587 |
| 3089534353001157632 | rperi | 0.924296 | 0.952028 | 1.030 | 0.0346434 |
| 3089534353001157632 | rap | 3.21224 | 3.63561 | 1.132 | 0.196542 |
| 3089534353001157632 | Zmax | 1.65245 | 1.91446 | 1.159 | 0.0819076 |
| 3089847099636770560 | Lz | 93.9174 | 95.0806 | 1.012 | 2.87753 |
| 3089847099636770560 | Lperp | 310.923 | 310.493 | 0.999 | 9.07623 |
| 3089847099636770560 | eccentricity | 0.0855942 | 0.0849398 | 0.992 | 0.00261475 |
| 3089847099636770560 | rperi | 0.0934137 | 0.0955714 | 1.023 | 0.00112673 |
| 3089847099636770560 | rap | 19.6202 | 20.2968 | 1.034 | 0.589837 |
| 3089847099636770560 | Zmax | 20.0959 | 20.7142 | 1.031 | 0.601599 |

## Interpretation Boundary

Under astrometry-correlated, RV-fixed propagation, both Priority-A candidates retain their broad Project III/VI diagnostic character. The retrograde high-inclination candidate remains strongly retrograde and high-Zmax in all draws. The radial/GSE-like candidate remains high-eccentricity and high-Zmax, but its Lz diagnostic remains near the existing 500 kpc km s^-1 threshold, so threshold probabilities should be treated as sensitivity diagnostics rather than a reclassification.

No full six-dimensional observational uncertainty validation is claimed here. Missing matched LAMOST RV uncertainty remains the main blocker for RV-inclusive propagation under the current Project II orbit-chain convention.

## Outputs

- `notebooks/33_project_vi_priority_a_correlated_astrometric_mc.ipynb`
- `data/processed/project_vi_correlated_mc_draws.csv`
- `data/processed/project_vi_correlated_mc_candidate_summary.csv`
- `data/processed/project_vi_correlated_mc_mode_comparison.csv`
- `figures/project_vi_correlated_mc_lz_lperp.png`
- `figures/project_vi_correlated_mc_orbit_uncertainty.png`
- `figures/project_vi_mc_mode_comparison.png`
