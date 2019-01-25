# kdb+ Continuous Integration

Unit testing for kdb+/q in TravisCI via qspec/qutil

Uses Anaconda to set up kdb+ & qutil, downloads qspec. Current example
runs one of the example tests from qspec as PoC.

Requires base64 encoded `kc.lic` stored in env var `KCLIC` in TravisCI
repo settings. Generate with

`echo $QLIC/kc.lic | base64 -w0`

## To Do:

- [ ] Add Windows support
- [ ] Add Mac OS support
- [ ] Make `.travis.yml` more generic (test script in env var etc)
