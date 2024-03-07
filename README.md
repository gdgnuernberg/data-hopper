# data_hopper

YACP (Yet Another Community Project)

## What is this about?

This is yet another community project of GDG Nuremberg.
The goal of the app is to collect data for certain topics.
An example for such a topic would be 
- "Where in Nuremberg can I find bicycle pumps?".
- Or: "Where in Nuremberg can I find a public toilet?".
- Or: "Where in Nuremberg can I find a playground?".
- Or: "Where in Nuremberg can I find a public water tap?".

Those categories / questions will be defined and users can create or confirm entries for specific locations in the app.

## How to structure the data

The app needs certain entities to be able to store the data.
The following entities are needed for now:
- Location
  - Address
  - Coordinate
- Category
- Entry
  - Rating
  - Comment
  - Image
  - Tag
- User

## How to structure the app

The app follows a simple domain-based folder structure.
Domains are:

- Location
- Category
- Entry
- User

Every domain again has sub folders representing a 3-tier architecture:
- data
- domain
- presentation

## How to contribute

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Create a pull request
5. Wait for the review
6. Merge the pull request

## Brainstorming

- What map service to use?
- Which screens do we need?
- How do we enter the data?
- Where do we store the data?
- Is a profile needed?
- Which backend do we use?
- How do we setup CD/CI?
- Which feature set do we use?
- How do we handle translations?
- Do we want to integrate geofencing?
- How do we define the categories?