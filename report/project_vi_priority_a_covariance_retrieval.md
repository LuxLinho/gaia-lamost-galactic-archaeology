# Project VI - Priority-A Full Astrometric Covariance Retrieval

## Scope

This report documents Gaia DR3 astrometric uncertainty and correlation retrieval for exactly two Project VI `validation_priority_A` candidates. It is an input audit for later correlated astrometric Monte Carlo work. No random sampling or new classification robustness test is performed in this stage.

Targets:

- `3089847099636770560`
- `3089534353001157632`

## Gaia DR3 Retrieval

Source table: `gaiadr3.gaia_source` via Gaia TAP. The notebook first follows the project Gaia TAP pattern, and because `astroquery` is unavailable in the execution kernel, it uses a reproducible HTTPS TAP `/sync` fallback with the same ADQL query.

Raw query output: `data/raw/project_vi_priority_a_gaia_dr3_astrometry.csv`

The query returned exactly two unique source IDs with string-safe handling. Gaia correlation coefficients are stored as correlations, not covariances.

| source_id | ra deg | dec deg | parallax mas | parallax_error mas | pmra mas/yr | pmra_error mas/yr | pmdec mas/yr | pmdec_error mas/yr | ruwe | visibility_periods_used |
|:--|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
| 3089534353001157632 | 124.176993605 | 0.737449422 | 0.458765635 | 0.018229531 | 2.906363531 | 0.018547470 | -36.283028203 | 0.014079297 | 1.1972 | 18 |
| 3089847099636770560 | 122.508355065 | 1.280094333 | 0.637150857 | 0.023815988 | -42.072760483 | 0.025910826 | -36.356421287 | 0.021410597 | 0.9338 | 18 |

## Correlation Coefficients Used for First Covariance Matrix

The first correlated astrometric MC stage is expected to propagate `parallax`, `pmra`, and `pmdec`. RA/Dec uncertainties are retrieved but not included yet because Gaia RA/Dec errors are in mas while the current coordinate chain consumes RA/Dec in degrees; adding them requires an explicit unit/frame treatment.

| source_id | parallax_pmra_corr | parallax_pmdec_corr | pmra_pmdec_corr |
|:--|--:|--:|--:|
| 3089534353001157632 | 0.231354 | -0.248190 | -0.106592 |
| 3089847099636770560 | 0.173574 | -0.119495 | -0.219415 |

## RV Audit

The existing Project II orbit chain uses LAMOST radial-velocity central values from `data/processed/gaia_lamost_larger_velocity_features.csv`. The local larger LAMOST products for these two targets do not provide a measured `rv_err` or radial-velocity quality/SNR field. Gaia DR3 provides a `radial_velocity` and `radial_velocity_error` for one target, while the other has no Gaia RV error. This stage does not mix a Gaia RV uncertainty with the LAMOST RV central value, so no measured RV uncertainty is ready for joint propagation with the current orbit-chain convention.

| source_id | rv_central_kms | rv_source | Gaia radial_velocity | Gaia radial_velocity_error | rv_uncertainty_ready |
|:--|--:|:--|--:|--:|:--|
| 3089534353001157632 | -43.26 | LAMOST rv from gaia_lamost_larger_velocity_features.csv | -48.8463 | 1.28562 | False |
| 3089847099636770560 | -11.29 | LAMOST rv from gaia_lamost_larger_velocity_features.csv | missing | missing | False |

## Covariance Matrix Definition

Variable order:

```text
parallax_mas, pmra_masyr, pmdec_masyr
```

For variables `i` and `j`:

```text
cov(i,j) = corr(i,j) * sigma_i * sigma_j
```

Correlation coefficients are dimensionless and must not be interpreted as covariance values.

## Covariance Checks

| source_id | covariance_ready | symmetric | diag=sigma^2 | corr bounds | PSD | Cholesky | min eigenvalue | eigenvalues |
|:--|:--|:--|:--|:--|:--|:--|--:|:--|
| 3089534353001157632 | True | True | True | True | True | True | 0.000172716 | 0.0001727160709221058;0.0002676848295397281;0.0004341501474332359 |
| 3089847099636770560 | True | True | True | True | True | True | 0.000402109 | 0.0004021086945343185;0.0005015638425774226;0.0007933133152030883 |

No numerical covariance-matrix correction was applied to either target.

## Readiness Assessment

- `3089534353001157632`: covariance-ready for the 3D parallax/pmra/pmdec astrometric covariance matrix = `True`; measured RV uncertainty ready = `False`.
- `3089847099636770560`: covariance-ready for the 3D parallax/pmra/pmdec astrometric covariance matrix = `True`; measured RV uncertainty ready = `False`.

Both candidates now have the Gaia DR3 standard uncertainties and correlation coefficients required for a later correlated astrometric MC over parallax, pmra, and pmdec. Neither candidate currently has a measured RV uncertainty that can be consistently paired with the LAMOST RV central value used by the existing orbit chain.

This stage does not produce a new classification or robustness conclusion. It only establishes input readiness for the next Project VI correlated astrometric MC step.

## Outputs

- `notebooks/32_project_vi_priority_a_covariance_retrieval.ipynb`
- `data/raw/project_vi_priority_a_gaia_dr3_astrometry.csv`
- `data/processed/project_vi_priority_a_covariance_inputs.csv`
- `data/processed/project_vi_priority_a_field_inventory.csv`
- `report/project_vi_priority_a_covariance_retrieval.md`
