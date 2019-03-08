## Background

The R community has participated in the Google Summer of Code (GSoC) since 2008 with a successful run over time.
As the R community is expected to continue its expansion in a more data-driven world, the effective 
utilization of programs such as Google Summer of Code could help increase the pace of R's user-base expansion, 
diversity and adoption, globally.

So far there has been **185 projects** done within the GSoC program under the R organization. There is no count of
mentors that have participated so far, and on a year-by-year basis to understand the trend of mentorship and how
it affects the program.

Perhaps, it is important to recognize the efforts of mentors, through a data-driven listing of most valuable - those
who have committed the most time to mentor the future R users and developers.
Also to those students who participated in GSoC in the past and who are now mentors.
Encouraging the cycle of GSoC students becoming mentors could have a great impact on the R community and its
development.

Many proficient users of R, could be spurred to become mentors by seeing how thriving the RGSoC community is via data-driven
rendering of past accomplishments, thereby relieving over-laboured mentors who spend much more time mentoring.

Students who have project ideas could search through a data-driven list of mentors to find those mentors who have mentored similar
projects. Mentors could also find co-mentors from a searchable list of past mentors.


So in this project, the proposal is to curate the past accomplishments of R-GSoC in a data-driven manner that can help the R community
discover and track R-GSoC projects, their students, mentors, and work-products. Developing it on GitHub will allow everyone of
them contribute to it. Displaying it as a dashboard will give a quick, summarized, but broad overview.


## Related Work

Hans Borchers started to compile a list of GSoC projects here: https://github.com/hwborchers/gsoc-r 

This list developed to the one found here under rstats-gsoc repo:  https://github.com/rstats-gsoc/gsoc2017/blob/master/projects.csv

There is a data table and chart of projects here:  https://benubah.github.io/rcentral/gsoc.html


## Details of Coding Project

This project hopes to update the [list of GSoC projects found under rstats-gsoc](https://github.com/rstats-gsoc/gsoc2017/blob/master/projects.csv) by:

- Completing mentor names that are incomplete, and making their names consistent throughout the list.
- Add a column for Work Product classification for all 185 projects + this year's projects
- Create a static dashboard web page based on Admin LTE or any open source Bootstrap dashboard template
- Automatically display the CSV list of GSoC projects as a DataTable that is searchable/sortable
- Adding widgets and charts to the page (by analyzing the CSV list) that will possibly show the following:
  - Show count of unique mentors till date. (as widget)
  - Show number of returning mentors
  - Show number of students returning as mentors (as widget)
  - Chart of most valuable mentors (based on number of projects mentored till date)
  - Chart of yearly number of projects
  - Chart of number of mentors per year
  - Chart of Work-Product Distribution
  - Links to R-GSoC GitHub Repos and Google forum
  - Number of projects funded till date (as widget)
  - Number of students participated till date (as widget)
  - Section to track what successful students are accomplishing in the present for the R community.

## Expected Impact

1. Could help students find mentors from past projects and help mentors find co-mentors. Also could help them and their projects get discovered.

3. The URL for this web page could be added to the annual application to Google, to show how far R has been
   successful over the years.
   
4. The tool could help the mentors that will present talks about the progress of R-GSoC at the annual Google summit or useR! conferences.

5. The impact of GSoC to the R Community could possibly be measured using this.

6. If this tool is publicized around the community, it could help R users discover projects, and even become
   interested in being mentors and student participants.
   
7.  Could help in obtaining numbers for yearly application to Google by R-GSoC administrators.

8. Could help list what successful students are accomplishing in the present for the R community.

## Mentors

Mentors needed. Would be great to also see former GSoC students who are now mentors sign up to mentor this project.

## Tests

