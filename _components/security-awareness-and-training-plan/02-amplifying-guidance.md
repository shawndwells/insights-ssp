---
type: component
title: Amplifying Guidance
parent: saatp
order: 02
---
The vulnerability management process begins with vulnerabilities being identified
or reported to Red Hat's Product Security team.

Red Hat Product Security rates the impact of security issues found in Red Hat
products using a four-point scale (Low, Moderate, Important, Critical), as well
as Common Vulnerability Scoring System (CVSS) base scores. These provide a
prioritized risk assessment to help you understand and schedule upgrades to your
systems, enabling informed decisions on the risk each issue places on your
unique environment.

The four-point scale tells you how serious Red Hat considers an issue to be,
helping system operators judge the severity and determine what the most
important updates are. The scale takes into account the potential risk based
on a technical analysis of the exact flaw and its type, but not the current
threat level; a given rating will not change if an exploit or worm is later
released for a flaw, or if one is available before the release of a fix.

| Severity Rating | Description |
|:---------------:|:-----------|
| Critical Impact | This rating is given to flaws that could be easily exploited by a remote unauthenticated attacker and lead to system compromise (arbitrary code execution) without requiring user interation. These are the types of vulnerabilities that can be exploited by worms. Flaws that require an authenticated remote user, a local user, or an unlikely configuration are not classed as Critical impact.|
| Important Impact| This rating is given to flaws that can easily compromise the confidentiality, integrity, or availability of resources. These are the typos of vulnerabilities that allow local users to gain privileges, allow unauthenticated remote users to view resources that should otherwise be protected by authentication, allow authenticated remote users to execute arbitrary code, or allow remote users to cause a denial of service.|
| Moderate Impact | This rating is given to flaws that may be more difficult to exploit but could still lead to some compromose of the confidentiality, integrity, or availability of resources, under certain circumstances. These are the typoes of vulneravilities that could have had a Critical or Important impact but are less easily exploited based on a technical evaluation of the flaw, or affect unlikely configurations.|
| Low Impact | This rating is given to all other issues that have a security impact. These are the types of vulnerabilities that are believed to require unlikely circumstances to be able to be exploited, or where successful exploit would give minimal consequences.|

Additional information on Red Hat's Severity Ratings can be found at
[Understanding Red Hat security ratings](https://access.redhat.com/security/updates/classification/).

### Differences Between NVD and Red Hat Scores
For open source software shipped by multiple vendors, the CVSS base scores
may vary for each vendor's version, depending on the version they ship, how they
ship it, the platform, and even how the software is compiled. This makes scoring
of vulnerabilities difficult for third-party vulnerability databases, such as
the NIST National Vulnerability Database (NIST NVD), who can only give a single
CVSS base score to each vulnerability.

These differences can cause the scores to vary widely. For example, NVD rates
Firefox flaws as having High impact metrics because the Firefox application
is also available for Microsoft Windows, where it is common that the user is
running Firefix with administrator privileges. For Red Hat Enterprise Linux, Low
impact metrics are used, as Firefox is most likely to run as an unprivileged
user.

For these reasons, it is recommended that, whenever possible, CVSS base scores
provided by Red Hat are given preference over third party scoring.

### Differences Between DISA IAVA and Red Hat Scores
tbd tbd tbd
