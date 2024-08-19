#!/bin/bash



#  First, we create the account name
account_name=$(whoami)

# Now we find out what the current date is
current_date=$(date)

# Now to get the current month and year
current_month=$(date +"%B %Y")

#Now we print what is required
echo "$account_name is testing script on $current_date $current_month"

#Then we print the calendar for the current month, which is April
cal
