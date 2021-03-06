# sage.sql was originally generated by the autoSql program, which also 
# generated sage.c and sage.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#stores sage data in terms of uni-gene identifiers.
CREATE TABLE sage (
    uni int not null,	# Number portion of uni-gene identifier, add 'Hs.' for full identifier.
    gb char(64) not null,	# Genebank accesion number.
    gi char(64) not null,	# gi field in unigene descriptions.
    description longblob not null,	# Description from uni-gene fasta headers.
    numTags int not null,	# Number of tags.
    tags longblob not null,	# Tags for this unigene sequence.
    numExps int not null,	# Number of experiments.
    exps longblob not null,	# index of experiments in order of aves and stdevs.
    meds longblob not null,	# The median count of all tags for each experiment.
    aves longblob not null,	# The average count of all tags for each experiment.
    stdevs longblob not null,	# Standard deviation of all counts for each experiment
              #Indices
    PRIMARY KEY(uni)
);
