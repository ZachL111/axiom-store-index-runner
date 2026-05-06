# Axiom Store Index Runner Walkthrough

This note is the quickest way to read the extra review model in `axiom-store-index-runner`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | index fit | 175 | ship |
| stress | join width | 188 | ship |
| edge | constraint risk | 156 | ship |
| recovery | plan drift | 160 | ship |
| stale | index fit | 212 | ship |

Start with `stale` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `index fit` against `constraint risk`, not the raw score alone.
