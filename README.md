# Changelog
All notable changes to these images will be documented in this file.

## [1.0.4] - 2022-06-01
### awe-perl-base
- Added install of perl-html-template and Tie::IxHash
  - Found to be required by (at least) AHPL
### awe-perl-oracle
- Removed instantclient-sqlplus-linux.x64-21.6.0.0.0dbru.zip from install as it is not required

## [1.0.3] - 2022-06-01
- Rebuild awe-httpd-base to resolve [CVE-2021-35940](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-35940)
  - Rebuild of all images relying on awe-httpd-base

## [1.0.2] - 2022-05-26
- Moved to using Alpine base images for awe-perl-* and awe-httpd-base images
