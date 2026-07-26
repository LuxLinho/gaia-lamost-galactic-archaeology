# Figure Quality Audit

## Purpose

This document records the current figure-quality status of the repository after the research-program upgrade.

The automated figure audit found no obviously blank or corrupted PNG files. However, several earlier figures still use legacy naming conventions or contain low-information diagnostic content from earlier development stages.

## Automated Audit Result

No files were flagged as blank by the current image-size and pixel-variation audit.

## Current Interpretation

The figure set is technically valid, but it contains mixed generations of outputs:

1. Early Project I / Project V exploratory figures
2. Earlier Project V and Project II diagnostic figures
3. New Project II orbit-integration figures
4. New Project III population-analysis figures
5. New Project IV metallicity-readiness figures

## Known Issues

Earlier Project V and Project II figures have now been renamed to the current
Roman-numeral project-prefix convention. Some older figures may still be
scientifically valid but low-information or visually inconsistent with the newer
research-program structure.

Example category:

- `project_ii_orbital_diagnostics_feh_velocity.png` — technically valid but low-information / legacy diagnostic figure.

## Future Polish Plan

A later repository-wide polish pass should:

1. Review all figures manually.
2. Mark each figure as publication-ready, useful diagnostic, low-information, or legacy/obsolete.
3. Regenerate figures where useful using the current Project I / II / III / IV / V / VI title style.
4. Replace low-information figures where useful.
5. Move obsolete figures to an archive directory if they are no longer referenced.
6. Update `figures/README.md` after the review.
7. Standardize figure style, title format, axis labels, and colorbar conventions.

## Current Decision

No figures are deleted at this stage. The current figure set is preserved for reproducibility and development history.
