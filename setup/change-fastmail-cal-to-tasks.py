#!/usr/bin/python3
#
# Stolen from a gist by benjaoming <https://gist.github.com/benjaoming/46de4de9821603a57c23019cbc67a34b>
#
# If you are using Thunderbird and other todo clients that do not support
# creation of new calendars on a CalDav backend (such as Fastmail), you'll
# need to tell Fastmail directly via CalDav.
#
# Dependencies: On Debian/Ubuntu, install python3-caldav:
#
#  sudo apt install python3-caldav
#
# 1. Go to fast mail and get a CalDav URL for an existing calendar
# 2. Generate an app password - make it for "CalDav" access.
# 3. Run the script, INSERT A BLANK SPACE SO THE COMMAND DOES NOT
#    GET STORED IN YOUR TERMINAL HISTORY
#
#  CALDAV_URL="<obtail from Fastmail export>" CALDAV_USER="you@domain.tld" CALDAV_PASS="<Fastmail app password>" python3 fastmail_create_todo_list.py
#
#  4. Go to Fastmail again and see that a calendar "TODO" is now shown
#  5. Export a CalDav URL for this calendar
#  6. Potentially, create a new app password for Thunderbird so we don't
#     reuse the one that we've just used in the command-line

import os
import caldav

caldav_url = ""    ## fastmail chose "export" in cal settings to get
username = ""      ## fastmail acc name
password = ""      ## app password
calendar_name = "" ## chose name, like "Tasks"

## When using the caldav library, one should always start off with initiating a
## DAVClient object, which should contain connection details and credentials.
## Initiating the object does not cause any requests to the server, so this
## will not break even if caldav url is set to example.com
client = caldav.DAVClient(url=caldav_url, username=username, password=password)

# Calendar name is hard-coded TODO
caldav.Principal(client).make_calendar(name=calendar_name, supported_calendar_component_set=["VTODO", "VEVENT",])
