# axiom-store-index-runner

`axiom-store-index-runner` explores databases with a small Swift codebase and local fixtures. The technical goal is to develop a Swift command-oriented project for index scenarios with log and snapshot fixtures, replay consistency checks, and synthetic fixtures only.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how index fit and constraint risk should influence a review result.

## Axiom Store Index Runner Review Notes

For a quick review, compare `index fit` with `constraint risk` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/axiom-store-index-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `index fit` and `constraint risk`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Swift addition stays small enough to inspect in one sitting.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
