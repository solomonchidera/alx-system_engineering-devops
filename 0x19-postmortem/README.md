## CODINGHK DISCORD BOT OUTTAGE INCIDENT REPORT
**Posted on:** April 13, 2024

By Codinghk Discord Bot Team

Earlier this week, we faced a bot outtage or rather bot downtime at Codinghk
and we will try to pitpoint the reasons behind this incident

The following is the incident report for the Codinghk bot outage that occurred on April 10, 2024.
We understand this service issue has impacted our valued users, and we apologize to everyone who was affected.

**Issue Summary**

From 9:22 am, Most Users that were online noticed that request made to our discord bot, returned nothing but "The application did not respond" error
by 9:25 it was confirmed that 100% of our users were facing this issue, no one
could make a successful request with a valid response, The root cause of this
outage was replit tab that was closed since we where hosting then on replit.

**Timeline:(Time Zone are in West Africa Time)**

* **9:00** All code was written and saved on replit
* **9:22** Outtage begins
* **9:22** Uptime Robot alarted teams
* **9:45** Transfer from replit to Heroku attempt failed
* **10:15** Transfer from replit to AWS EC2 Successful
* **10:18** Bot online and alive
* **10:20** All bot functionality back and working fine
* **Postmortem Meeting:** Team Meeting was held which led to this blog on April
  12, 2024

**Impact**
