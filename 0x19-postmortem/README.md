## Postmortem: Message Command Failure

**Posted by:** Solomon 2024-04-11

**Summary:**
* On April 10th, 2024, users reported that the `!weather` command stopped providing any response. Partial functionality was restored quickly by rolling back the latest code change, with a permanent fix deployed shortly after.
* Outage Duration: April 10th, 2024. 18:30 WAT – 20:15 WAT (approximately 1 hour, 45 minutes).

**Timeline:(all time zone in WAT)**
* **2024-04-10 18:30:** First reports of `!weather` command not working.
* **2024-04-10 18:45:** Team confirms the issue and begins investigation.
* **2024-04-10 19:00:** Recent code changes identified as the likely cause. Rollback initiated.
* **2024-04-10 19:12:** Rollback complete, `!weather` command partially restored.
* **2024-04-10 20:05:** Root cause identified, fix implemented, and a new version deployed.
* **2024-04-10 20:15:** Full functionality of the `!weather` command is restored.
* **2024-04-12 11:00:** Postmortem meeting conducted.

**Impact:**
* **Customer Impact:** Approximately 500 active users across 25 servers were unable to use the `!weather` command, a frequently used feature.
* **Business Impact:** No direct financial impact, but some user frustration expressed on social media and support channels.

**Root Cause(s):**
* **Technical Cause:** A change to the API request logic for retrieving weather data introduced a syntax error, preventing the bot from parsing the response.
* **Contributing Factors:** Lack of unit tests for the updated weather command logic, allowing the error to slip into production unnoticed.

**Corrective Actions:**
* **Immediate Fixes:**  Rolled back recent changes to the weather command module.
* **Preventative Measures:** 
    * Implement unit tests for the `!weather` command functionality (Owner: moniaar, Deadline: 2024-04-18)
    * Add an integration test that verifies the end-to-end flow of the `!weather` command. (Owner: solomon, Deadline: 2024-04-18)

**Lessons Learned:**
* **The importance of automated testing:** This incident could have been avoided with well-written unit and integration tests.
* **Faster incident resolution:** Improve bot logging and error reporting for future debugging.

**Communication**
* **Internal:**  The team communicated effectively on a dedicated Slack channel during the outage.
* **External:**   A status update was posted on the bot's Twitter acknowledging the issue and progress.

