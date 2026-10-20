---
title: "From spreadsheet steps to an Alteryx workflow"
category: "Analytics & workflows"
tools: ["Alteryx", "Excel", "Data preparation", "Automation"]
summary: "Moving an Excel-based cleaning and matching process into a repeatable workflow, with validation built in."
weight: 2
workflow: ["Prepare the inputs", "Standardize the data", "Run the workflow", "Validate the output"]
---

## The work

I moved an Excel-based data cleaning and matching process into Alteryx. The spreadsheet approach involved repeated preparation and comparison steps. I wanted a workflow that could be reused as new files arrived.

The work involved thinking through the process before automating it: what needed to happen to the inputs, which steps could be repeated consistently, and where the output needed to be checked.

## Building in checks

I compared initial Alteryx outputs with results from the existing spreadsheet process to check that the transition was producing consistent results.

Validation was part of the work, rather than something to leave until the end. A workflow can run successfully and still produce an unexpected output, so checking the results matters as much as connecting the steps.

## Looking beyond one file

The shift brought the preparation and matching steps into a reusable process. It also meant thinking about what would happen on the next run: how new files would enter the workflow and how the results would be reviewed.

This overview focuses on the workflow redesign. Internal matching rules, source data, and organization-specific implementation details are not included.

## Related work

[See how I approach reporting in Tableau](/project/tableau-implementation/).
