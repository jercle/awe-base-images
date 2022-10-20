# Changelog
All notable changes to these images will be documented in this file.

## [1.0.8] - 2022-10-20
### awe-perl-base
Performing the following updates:
* (1/11) Upgrading expat (2.4.8-r0 -> 2.4.9-r0)
* (2/11) Upgrading busybox (1.35.0-r14 -> 1.35.0-r17)
* (3/11) Upgrading ca-certificates (20211220-r0 -> 20220614-r0)
* (4/11) Upgrading ssl_client (1.35.0-r14 -> 1.35.0-r17)
* (5/11) Upgrading zlib (1.2.12-r1 -> 1.2.12-r3)
* (6/11) Upgrading libcurl (7.83.1-r2 -> 7.83.1-r3)
* (7/11) Upgrading libldap (2.6.2-r0 -> 2.6.3-r1)
* (8/11) Upgrading libxml2 (2.9.14-r0 -> 2.9.14-r2)
* (9/11) Upgrading alpine-baselayout-data (3.2.0-r22 -> 3.2.0-r23)
* (10/11) Upgrading alpine-baselayout (3.2.0-r22 -> 3.2.0-r23)
* (11/11) Upgrading ca-certificates-bundle (20211220-r0 -> 20220614-r0)

...to resolve CVEs:

* CVE-2022-3209
* CVE-2022-35252
* CVE-2022-30065
* CVE-2022-30065
* CVE-2021-46828
* CVE-2021-46828
* CVE-2022-37434

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
