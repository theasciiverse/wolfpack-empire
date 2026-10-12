# Asciiverse packaging

This repository packages the Wolfpack Empire client for the Asciiverse
catalog. Upstream is https://git.pond.sub.org/empire/empserver (remote
`upstream`); everything Asciiverse adds is here and in
`.github/workflows/asciiverse-release.yml`.

- `wolfpack-empire.cast`: the 100x30 catalog preview, a first session as a
  new country.
- `drive.sh`: types that session into the client. The recording was made
  against a private test server (`files`, `fairland 4 30`, `emp_server` on
  127.0.0.1:16665, `exec newcap_script` as POGO), never against a live game.

The released client connects to the Wolfpack Fever game
(blitz.wolfpackempire.com:4567) by default.
