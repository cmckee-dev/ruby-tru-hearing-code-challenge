Interview Code for Tru Hearing


User Story #1
===
As the Engineering Lead

I want to be able to view when the entire team is available for all 30 minute increments

So that I know when best to schedule a team discussion


Given TruHearing development hours are 8:30-5:00, with lunch from 12:00-1:00, we have 6 engineers on our team with appointments at 9:00-9:30, 9:00-11:30, 10:00-11:00, 2:30-3:00, 2:30-3:30


When I execute my script I get an array of times in 30 minute increments when my entire team is available.



Expected Behavior for story #1
===
You will create a function called team_availability that takes a single parameter of an array of arrays consisting of start and end times.

When I execute the function below

```
team_availability([['9:00', '9:30'], ['9:00', '11:30'], ['10:00', '11:00'], ['2:30', '3:00'], ['2:30', '3:30']])
```

I am returned an array of arrays
```
[['8:30', '9:00'], ['11:30', '12:00'], ['1:00', '1:30'], ['1:30', '2:00'], ['2:00', '2:30'], ['3:30', '4:00'], ['4:00', '4:30'], ['4:30', '5:00']]
```
