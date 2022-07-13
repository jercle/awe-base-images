# Changelog
All notable changes to these images will be documented in this file.

## [1.0.7] - 2022-07-13
### awe-perl-base
- Add `cpan install HTML::Template::Expr`

## [1.0.6] - 2022-07-06
### awe-tomcat-jdk7-corretto
- Changed base Tomcat image to 8.5-jdk8-corretto

## [1.0.5] - 2022-06-17
### awe-httpd-base
- Update `awe-httpd-base` base image to `2.4.54-alpine`

This is to resolve the following CVE
| Severity                                                                                                                 | Priority Score / 1000  | Issue                                                                     | Exploit Maturity      |
| :------:                                                                                                                 | :--------------------  | :----                                                                     | :---------------      |
| ![high severity](https://res.cloudinary.com/snyk/image/upload/w_20,h_20/v1561977819/icon/h.png "high severity")   | **471**  | Out-of-bounds Read <br/>[SNYK-ALPINE316-APR-2849152](https://snyk.io/vuln/SNYK-ALPINE316-APR-2849152)   | No Known Exploit   |

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
