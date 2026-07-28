# Project II — Orbital Dynamics
## Additional GMM Member Orbital Follow-up

Date: 2026-07-28

## Executive Summary

This Project II follow-up responds to the Project V final-synthesis handoff by testing whether the 8 additional members of the Project V 32-star GMM reference component show orbital consistency with the 24 recovered known-candidate core stars.

The analysis uses `source_id` as the stable join key. The 8 additional members were identified from `project_v_gmm_cross_domain_membership.csv` and joined to `gaia_lamost_larger_velocity_features.csv`. A Gaia DR3 TAP query was performed only for those 8 source IDs to supplement astrometric uncertainties, correlations, RUWE, and Gaia radial-velocity errors where available. Central radial velocities remain the existing LAMOST values used by Project V and the parent Project II feature table.

Final classification for the complete 32-star component: **strengthened partial support**.

Orbital agreement can strengthen follow-up priority, but does not establish a common physical origin.

## Inputs and Join Audit

- `data/processed/project_v_gmm_cross_domain_membership.csv`
- `data/processed/gaia_lamost_larger_velocity_features.csv`
- `data/processed/project_ii_additional_gmm_member_gaia_dr3_query.csv`
- `data/processed/project_ii_orbit_angular_momentum_consistency.csv` and Project V M4 membership fields for the recovered and omitted candidate comparison groups

Join key: `source_id`, preserved as a string-like key to avoid precision loss. No row-number joins or coordinate-only joins were used. The internal parent-sample velocity table has unique keys for the 1,838-star parent sample. The Gaia DR3 query returned 8 unique rows for the 8 requested source IDs.

## Evidence Independence Boundary

Project V GMM used `[Fe/H]`, radial velocity, tangential velocity, BP-RP, and absolute G magnitude. Angular-momentum and orbit diagnostics were not direct GMM features, but they inherit information from the velocity measurements used by the model and therefore constitute partially held-out rather than fully independent evidence.

## Coverage Results

- Complete 5D astrometry: 8 / 8
- Radial velocity: 8 / 8
- Usable distance: 8 / 8
- Complete 6D phase space: 8 / 8
- Angular momentum: 8 / 8
- Integrated orbit metrics: 8 / 8

## Angular Momentum and Orbit Comparison

The 8 additional members have median Lz=-1542.4, Lperp=226.5, and Ltot=1554.5 kpc km s^-1. The recovered known-candidate core has median Lz=-281.0, Lperp=534.9, and Ltot=981.9 kpc km s^-1.

Additional-member classification counts:

```text
{
  "orbitally consistent": 8
}
```

The comparison strengthens the orbital follow-up case for the additional members because all eight fall within the recovered-core angular-momentum consistency region under the adopted rule. It is still not a clean upgrade of the Project V 32-star component into a physically validated stellar population, because the 8-star set is uniformly retrograde while the recovered core has a mixed rotation-class composition, and the diagnostics remain only partially held-out.

## Monte Carlo Uncertainty Summary

The Monte Carlo propagation uses Gaia DR3 parallax/proper-motion covariance for the 8 additional members. Central radial velocities are LAMOST values; Gaia DR3 radial-velocity errors are used only as an approximate MC scale where Gaia RV errors exist. For the source without Gaia RV error, the LAMOST radial velocity is held fixed. RA/Dec uncertainties are not propagated in this limited Project II follow-up. This is a basic uncertainty diagnostic, not the full Project VI uncertainty program.

## Per-Star Additional-Member Results

- `3083556278216260224`: selection_frequency=0.8659; distance=1.605 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-767.2, Lperp=50.3, Ltot=768.8 kpc km s^-1; rotation=retrograde; core_distance=0.92; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3089535697327739392`: selection_frequency=0.8293; distance=1.117 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-1131.6, Lperp=418.2, Ltot=1206.4 kpc km s^-1; rotation=retrograde; core_distance=0.84; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3089847374514674176`: selection_frequency=0.6220; distance=1.535 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-1537.9, Lperp=154.4, Ltot=1545.6 kpc km s^-1; rotation=retrograde; core_distance=1.50; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3084831608629138816`: selection_frequency=0.2439; distance=2.428 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-1546.8, Lperp=227.3, Ltot=1563.4 kpc km s^-1; rotation=retrograde; core_distance=1.48; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3077426977633583616`: selection_frequency=0.2195; distance=2.021 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-1674.8, Lperp=887.6, Ltot=1895.5 kpc km s^-1; rotation=retrograde; core_distance=1.87; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3084495467307744512`: selection_frequency=0.2073; distance=0.554 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-1016.5, Lperp=404.5, Ltot=1094.0 kpc km s^-1; rotation=retrograde; core_distance=0.70; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3089912520578584832`: selection_frequency=0.1829; distance=2.507 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-2148.9, Lperp=225.7, Ltot=2160.8 kpc km s^-1; rotation=retrograde; core_distance=2.40; MC_consistent_probability=1.00; classification=orbitally consistent.
- `3090620258172557440`: selection_frequency=0.1341; distance=0.883 kpc (gaia_lamost_larger_velocity_features_inverse_parallax); Lz=-1594.2, Lperp=69.6, Ltot=1595.8 kpc km s^-1; rotation=retrograde; core_distance=1.63; MC_consistent_probability=1.00; classification=orbitally consistent.

## Required Questions

1. **How many of the 8 additional members have complete 6D data?** 8 / 8.
2. **How many can support angular-momentum calculation?** 8 / 8.
3. **How many can support baseline orbit integration?** 8 / 8.
4. **Are they close to the 24-star recovered core in Lz/Lperp/Ltot?** Yes under the adopted recovered-core angular-momentum distance rule; all eight are classified as orbitally consistent.
5. **Are prograde/retrograde and orbital-family compositions consistent?** Partly. The 8 additional members are uniformly retrograde, while the recovered core has mixed prograde, retrograde, and low-Lz/radial members.
6. **Are results robust to measurement uncertainty?** Several classifications are stable under the basic MC diagnostic, but the uncertainty model is incomplete because LAMOST RV errors are not available for all stars.
7. **Do higher selection-frequency additional members look more orbitally consistent?** Exploratory only. The relation is not strong enough at n=8 to claim a robust trend.
8. **Are there obvious anomalous added members?** No additional member is inconsistent under the adopted angular-momentum rule, but the lowest-selection-frequency and most Lz-offset objects should be reviewed carefully in Project VI.
9. **Should the 32-star component be upgraded from inconclusive?** Yes, as an orbital follow-up signal, to **strengthened partial support**. This is not an upgrade to physical validation or common-origin evidence.
10. **Which objects are most worth Project VI/external validation?** All 8 additional members remain useful follow-up targets; the highest selection-frequency and orbitally/partially consistent objects are the most efficient first checks, while inconsistent objects are important stress tests of the GMM membership.

## Outputs

- `notebooks/30_project_ii_additional_gmm_member_orbital_followup.ipynb`
- `data/processed/project_ii_additional_gmm_member_input_audit.csv`
- `data/processed/project_ii_additional_gmm_member_orbits.csv`
- `data/processed/project_ii_additional_gmm_member_group_summary.csv`
- `data/processed/project_ii_additional_gmm_member_coverage_summary.csv`
- `data/processed/project_ii_additional_gmm_member_evidence_assessment.csv`
- `figures/project_ii_additional_gmm_member_angular_momentum.png`
- `figures/project_ii_additional_gmm_member_orbit_comparison.png`
- `figures/project_ii_additional_gmm_member_uncertainty_summary.png`

## Handoff to Project VI

Project VI should review all 8 additional GMM members with full uncertainty propagation, external catalogue checks, detailed abundance information, and selection-function analysis. Project VI should not treat this Project II follow-up as evidence of common physical origin; it is a prioritization and consistency screen.
