# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

User
- email - must be unique
- has_many trips
- has many activities through trips

Activity
- length of time in minutes
- location (future plans - add in google map api integration)
- name
- description
- cost
- supplies
- belongs_to timeslot (optional)
- belongs_to trip

Trip
- belongs_to :user
- name
- starting date
- ending date   & time ??
- has_many activities
- has many timeslots

Timeslot
- starttime
- endtime
- trip_id
- has_many activities



