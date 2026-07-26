# Project V Milestone 2: Advanced-Clustering Baseline Comparison

## Milestone objective

This milestone compares three advanced unsupervised clustering approaches on the
Project V discovery sample:

- HDBSCAN
- OPTICS
- Gaussian Mixture Models (GMM)

All model configurations were selected and locked using only the 1,838-star parent
sample and its five-dimensional discovery feature space:

- metallicity (`feh`)
- radial velocity (`rv`)
- tangential velocity
- Gaia colour (`bp_rp`)
- absolute G-band magnitude

The previously established 27-star candidate set was revealed only after model
selection. Candidate recovery therefore did not influence hyperparameter choice.

## Locked model configurations

| Algorithm | Locked configuration | Selection rule | Resulting structure |
|---|---|---|---|
| HDBSCAN | `min_cluster_size=15`, `min_samples=20`, `eom` | Admissible internal structure | 2 clusters and 804 noise points |
| OPTICS | `min_samples=10`, `xi=0.03`, `min_cluster_size=0.02` | Fallback maximum coverage | 1 cluster containing all 1,838 stars |
| GMM | 9 components, full covariance | Minimum BIC | 9 probabilistic components |

HDBSCAN produced the strongest conventional internal separation, with a silhouette
score of 0.407 among clustered stars. Its noise fraction was 0.437.

The selected OPTICS configuration did not produce a meaningful partition. It
collapsed the complete parent sample into a single cluster and is therefore retained
as a null or failure baseline rather than a successful recovery model.

The nine-component full-covariance GMM minimized BIC. Its low global silhouette
score of 0.059 indicates substantial overlap between mixture components in ordinary
Euclidean geometry. This does not invalidate the likelihood-based mixture model,
but it requires stability testing before physical interpretation.

## External candidate recovery

| Algorithm | Candidates in non-noise groups | Best-group recall | Best-group enrichment | Interpretation |
|---|---:|---:|---:|---|
| HDBSCAN | 0/27 | 0.0% | 0.00× | All candidates classified as density noise |
| OPTICS | 27/27 | 100.0% | 1.00× | Trivial recovery caused by a single all-sample cluster |
| GMM | 27/27 | 88.9% in component 5 | 51.06× | Strong concentration in one compact component |

The principal M2 result is the GMM component labelled 5:

- component size: 32 stars
- known candidates: 24
- candidate fraction within the component: 75.0%
- candidate recall: 24/27, or 88.9%
- enrichment over the parent candidate rate: 51.06 times
- non-candidate members: 8
- known candidates outside the component: 3

The parent candidate fraction is only 27/1,838, approximately 1.47%. Concentrating
24 candidates into a 32-star component is therefore far beyond the recovery expected
from an uninformative partition.

## Cross-algorithm interpretation

The three algorithms provide complementary evidence rather than three equivalent
successes.

HDBSCAN indicates that the candidate stars do not form a conventional high-density
core under the locked density definition. Their complete assignment to noise suggests
that they occupy sparse or tail-like regions of the five-dimensional feature space.

OPTICS provides no useful subdivision at the locked setting. Its nominal 100%
candidate recovery is not scientifically meaningful because the complete parent
sample was assigned to the same group.

GMM identifies a small, candidate-rich component despite weak global geometric
separation. This suggests that the candidate population may be better represented
as an overlapping distributional component than as an isolated density peak.

The combined result is therefore consistent with a chemically, kinematically, and
photometrically distinctive population that overlaps the broader parent distribution
and is not robustly isolated by density-based clustering.

## Scientific boundary

The 51-fold GMM enrichment is strong algorithmic evidence, but it is not yet proof
of a distinct astrophysical population.

Important limitations remain:

1. The candidate catalogue is external to model selection, but it is not an
   independent observational validation sample.
2. The models and candidate definition draw information from related astrophysical
   measurements, so complete independence cannot be assumed.
3. GMM component membership may be sensitive to resampling, feature selection,
   scaling, initialization, and the assumed covariance family.
4. The physical properties of the eight additional component members and the three
   missed candidates have not yet been assessed.
5. No orbital-action, abundance-pattern, or independent survey validation is
   included in this milestone.

Accordingly, M2 establishes a strong recovery target for validation rather than a
final discovery claim.

## M2 conclusion

Blind advanced-clustering comparison produced one scientifically promising result:
a nine-component full-covariance GMM isolated a 32-star component containing 24 of
the 27 established candidates, corresponding to 88.9% recall, 75% within-component
candidate purity, and 51.06-fold enrichment over the full parent sample.

The recovery is strongly algorithm dependent. HDBSCAN treated every candidate as
noise, while OPTICS failed to create a non-trivial partition. This contrast suggests
that the candidate structure is distributional and overlapping rather than a simple,
high-density cluster.

Project V should therefore proceed to stability and sensitivity validation before
assigning physical significance to the GMM component.

## Next milestone

Milestone 3 should test:

- bootstrap and subsample stability
- random-seed sensitivity
- feature leave-one-out experiments
- alternative feature scaling
- GMM component-count and covariance sensitivity
- cross-algorithm membership agreement
- membership-probability distributions
- the eight additional GMM members
- the three candidates outside the enriched component
- astrophysical and orbital coherence of repeatedly recovered members

## Outputs

### Notebook

- `notebooks/26_project_v_advanced_clustering_baseline_comparison.ipynb`

### Processed tables

- `data/processed/project_v_m2_blind_model_selection.csv`
- `data/processed/project_v_m2_locked_model_summary.csv`
- `data/processed/project_v_m2_cluster_assignments.csv`
- `data/processed/project_v_m2_candidate_recovery_by_group.csv`
- `data/processed/project_v_m2_candidate_recovery_summary.csv`

### Figures

- `figures/project_v_m2_model_selection.png`
- `figures/project_v_m2_locked_clustering_candidate_recovery.png`
