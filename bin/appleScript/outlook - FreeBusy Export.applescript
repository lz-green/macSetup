(*
Script Name: FreeBusy Export
Version: 	0.2

Description: This script makes it easy to respond to requests for available meeting times, for those who are not on the same Exchange server and can't lookup availability through the server.  
	The scripts prompts for start and end date / time, and returns a pre-formatted message with time-slots showing availability.

Author:	Yan Kravchenko (@yanfosec) yan.kravchenko@gmail.com
	
To Do:	
	* Add better error handling, didn't really do much in that regard
	* Add check to make sure the ending date/time is later than starting date/time
	* Add alternative notifications other than Growl
	* Improve message formatting
	* Tighten code (I am not a developer, so I am sure this script is pretty amateur stuff)
*)

-- Configurable Fields
global meetingInterval
global exchangeAccountName
global exchangeUserEmail
global defStartTime
global defEndTime
global timeZoneDescription
global useGrowl
set meetingInterval to 30 as number -- This sets the search interval.  30 seems to offer the best performance / detail balance, smaller intervals increase processing time
set exchangeAccountName to "CompanyExchange" as string -- This is the name of your Exchange account in Outlook Accounts
set exchangeUserEmail to "name@company.com" as string -- Email address of the account queries for availability
set defStartTime to "9:30am" as string -- The earliest meetings that will be considered
set defEndTime to "4:30pm" as string -- The latest meetings that will be considered
set timeZoneDescription to "(Central)" as string -- Time zone, only a label for the header, does not impact any actual dates or times
set useGrowl to true -- Change to false if you don't have Growl installed.  However, turning this off will also turn off notifications for when the script is done running.

-- There should not be any reason to modify anything below this point, unless looking to improve the script.

-- Global declarations
global emailCalendar
global crlf
global dayOfWeek
global startingTime
global endingTime
global aDuration
global isNewLine
set startingTime to (current date)
set endingTime to (current date)
set isNewLine to true
set aDuration to 0 as number
set dayOfWeek to " " as string
set crlf to (ASCII character 13) & (ASCII character 10)
set emailCalendar to "" as string


on getDate(textInput)
	return date textInput
end getDate

on writeOutLine()
	if startingTime is not equal to endingTime then
		set newLine to "   " & time string of startingTime & " - " & time string of endingTime & crlf as string
		set emailCalendar to emailCalendar & newLine
	end if
end writeOutLine

on evalDate(inDate, aStatus, isLastItem, isFirstItem)
	
	--log "inDate: " & inDate
	--log "aStatus: " & aStatus
	--log "isLastItem: " & isLastItem
	--log "isFirstItem: " & isFirstItem
	set upperTime to date (date string of inDate & " " & defStartTime) as date
	set lowerTime to date (date string of inDate & " " & defEndTime) as date
	if aStatus is "free" then
		if inDate is greater than or equal to upperTime and inDate is less than or equal to lowerTime then
			if weekday of inDate as string is not "Saturday" and weekday of inDate as string is not "Sunday" then
				if dayOfWeek is not equal to weekday of inDate as string then
					if isFirstItem then
						set dayOfWeek to weekday of inDate as string
						set emailCalendar to emailCalendar & crlf & "* " & date string of inDate & crlf
						log "First Item: " & emailCalendar
					else
						
						set endingTime to endingTime - (meetingInterval * minutes)
						if dayOfWeek is not equal to " " then
							writeOutLine() of me
						end if
						set aDuration to meetingInterval
						set isNewLine to true
						set dayOfWeek to weekday of inDate as string
						set emailCalendar to emailCalendar & crlf & "* " & date string of inDate & crlf
						log "Not First Item: " & emailCalendar
						
					end if
				end if
				if isNewLine then
					set startingTime to inDate
					set endingTime to startingTime + (meetingInterval * minutes)
					set isNewLine to false
					log "New Line: " & emailCalendar
					
					if isLastItem then
						set endingTime to endingTime - (meetingInterval * minutes)
						writeOutLine() of me
						log "New Line AND Last Item: " & emailCalendar
					end if
				else
					if endingTime is equal to inDate then
						set endingTime to endingTime + (meetingInterval * minutes)
						set isNewLine to false
						if isLastItem then
							log "Ending Time NOT Found - Is Last Item: " & emailCalendar
							writeOutLine() of me
						end if
					else
						log "Ending Time Found - Is Last Item: " & emailCalendar
						writeOutLine() of me
						set startingTime to inDate
						set endingTime to startingTime + (meetingInterval * minutes)
						set isNewLine to false
					end if
				end if
			end if
		end if
	else
		if isLastItem then
			--set endingTime to endingTime - (meetingInterval * minutes)
			writeOutLine() of me
		end if
	end if
end evalDate

on startMessage(startText, endText)
	if short date string of startText is equal to short date string of endText then
		set emailCalendar to "Here is my availability for " & date string of startText & " " & timeZoneDescription & ": " & crlf
	else
		set emailCalendar to "Here is my availability between " & short date string of startText & " and " & short date string of endText & " " & timeZoneDescription & ": " & crlf
	end if
	set emailCalendar to emailCalendar & "-------------------------------------------------------------------------------------------" & crlf
end startMessage

on sendNotification()
	tell application "System Events"
		set isRunning to (count of (every process whose bundle identifier is "com.Growl.GrowlHelperApp")) > 0
	end tell
	
	if isRunning then
		tell application id "com.Growl.GrowlHelperApp"
			
			set the allNotificationsList to ¬
				{"Progress Report"}
			
			set the enabledNotificationsList to ¬
				{"Progress Report"}
			
			register as application ¬
				"FreeBusy Data Extract" all notifications allNotificationsList ¬
				default notifications enabledNotificationsList ¬
				icon of application "Script Editor"
			
			notify with name ¬
				"Progress Report" title ¬
				"Availability has been copied into clipboard" description ¬
				"You may now paste into any message you like..." application name "FreeBusy Data Extract"
			
		end tell
	end if
	
end sendNotification

--tell application "Microsoft Outlook"
tell application "Microsoft Outlook"
	with timeout of 600 seconds
		
		set thisAccount to exchange account exchangeAccountName
		
		set defStart to short date string of (current date) & " " & defStartTime
		set defEnd to short date string of (current date) & " " & defEndTime
		
		repeat
			display dialog "Starting date..." default answer defStart with title "Starting Date"
			set startText to text returned of result
			--print startText
			try
				if startText is not "" then
					exit repeat
				end if
			on error
				beep
			end try
		end repeat
		
		
		repeat
			display dialog "Ending date..." default answer defEnd with title "Ending Date"
			set endText to text returned of result
			try
				if endText is not "" then
					--set endDate to date endText as string
					exit repeat
				end if
			on error
				beep
			end try
		end repeat
		
		-- Writes out the header for availability
		startMessage(getDate(startText) of me, getDate(endText) of me) of me
		log emailCalendar
		
		set availability to (query freebusy thisAccount for attendees exchangeUserEmail range start time date startText range end time date endText interval meetingInterval)
		
		set listSize to (count of availability) as number
		
		set timeSlot to getDate(startText as string) of me
		set endSlot to getDate(endText as string) of me
		set listIndex to 5 as number
		set date_array to {}
		set status_array to {}
		
		-- Load the two arrays with data from Exchange
		repeat while listIndex is not equal to (count of availability)
			
			set the end of date_array to timeSlot as date
			set the end of status_array to item listIndex of availability as string
			
			set listIndex to listIndex + 3
			set timeSlot to timeSlot + (meetingInterval * minutes)
			
		end repeat
		
		
		
		-- Main loop through the new arrays.
		set listIndex to 1
		repeat while listIndex is less than or equal to (count of date_array)
			
			if listIndex is equal to (count of date_array) then
				set isLastItem to true
			else
				set isLastItem to false
			end if
			if listIndex is equal to 1 then
				set isFirstItem to true
			else
				set isFirstItem to false
			end if
			
			evalDate(item listIndex of date_array, item listIndex of status_array, isLastItem, isFirstItem) of me
			
			set listIndex to listIndex + 1
			set timeSlot to timeSlot + (meetingInterval * minutes)
			
		end repeat
		
		set the clipboard to emailCalendar
		sendNotification() of me
		
	end timeout
end tell

