# T32 Table Generator

## Background 

The National Institutes of Health funds institutions to train predoctoral and postdoctoral students using the [T32 training grant program](https://researchtraining.nih.gov/programs/training-grants/T32)

Institutions which apply for and receive these funds need to complete up to eight Word document templates for each individual training grant. The exact tables that need to be completed depend on which type of program an institution offers. Predoctoral training programs need to fill out tables in the "A" series (e.g., Table 5A). Programs for postdoctoral trainees require tables be completed in the "B" series (e.g., Table 5B).

Requirements for completing these tables are specified [here](https://grants.nih.gov/grants/forms/data-tables.htm). The exact format of these tables are modified around every 2-3 years.

All the tables have their own quirks, but one of the most challenging is Table 5 A/B/C, in which programs are asked to list the publications by trainees. These can be well over 100 pages each! If an institution submits for eight different grants, that's a lot of administrative overhead. The following circumstances make producing and maintaining these files a challenge:
- Adding and removing new investigators 
- Trainees from investigators' previous institutions should be included.
- Due to being on multiple grants, investigators are often asked several times for the same information.
- Corrections for one grant submission aren't necessarily captured in a subsequent grant.
- Upon providing feedback, investigators will routinely provide errors / misspellings especially in the publication metadata.

## Opportunity

A lot of institutions already maintain structured identity and publication metadata for investigators and, to a lesser trainees. These data should be used for producing these reports. Investigators' feedback should be entered into a central system where it can be repurposed. Updating tables in Word is tedious work, but the rows in Word XML follow standard rules; it should also be possible to seamlessly add and remove investigators on a grant and output their respective publications in NIH's specified format for Table 5.



## Included files
- **Sampledb.sql**  - a database structure with sample data populated; this can be imported into your MySQL instance
  - T32demo_mentors: identity info for mentors
  - T32demo_mentees: identity info for mentees
  - T32demo_grants: grants and mentors listed on the grants
  - T32demo_mentors_mentees: mentor/mentee relationships
  - T32demo_citation: citation information; there needs to be a unique record for each author; also the target author is demaracted by braces, e.g. `Ryter SW, Koo JK, {Choi AMK},`
- **Query.sql** - a query for generating the Word XML
- **Table5a_SampleOutput.xml** - the output that is generated when your run the above query against the above database 

Note that the file being output is slightly different than the one provided by NIH. The Director of Weill Cornell's MD-PhD Program *swears* that reviewers prefer the minor tweaks that he made to this format. They particularly like the use of page numbers and how only one publication is on each line.


## Instructions

1. Import `sampledb.sql` into your MySQL instance.
2. Update the data with mentor, mentee, relationship, grant, citation, etc. information
3. Update the Grant ID. This specifies which ID in T32demo_grants should be called.
4. Execute the query from your terminal. 
5. Output the results as FileName.xml. Be sure not to use a comma as a delimiter. Tabs are okay.
6. Open this document in Microsoft Word. The file should look like `Table5a_SampleOutput.xml`



## Options

- **Remove Person IDs** By default Person IDs are included. These can be commented out in lines 30 and 32 of the query.
- **Group together multiple publications by a single author in a given cell.** This is commented out by default. The commented code in the below case statement allows you to group together citations in a single cell. Lines 45-51 and 72, when commented out, allow you to group together publications by the same author.
- **Only include publications where both mentor and mentee are co-authors.** Line 69, when commented out, allows for this functionality.
