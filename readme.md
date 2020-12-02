# gavo_inputs

This repository contains all the folder descriptions and rd file required to ingest data into the Virtual Observatory at susseX (VOX) database. You can use VOX [here](https://herschel-vos.phys.sussex.ac.uk/)

## Ingestion
In order to ingest the various tables the data needs to be put in the appropriate folder in csv form. One can then import the data using e.g.

```
gavo imp help_a_list/q
```

The q.rd files here describe the data and are often produced automatically due to the large number of columns. Creating an index is a particularly time intensive process. The A list table takes around 2 days to ingest on the VO server. the full masterlist with all photometry columns takes around 2 weeks.
