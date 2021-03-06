# bedRnaElements.sql was originally generated by the autoSql program, which also 
# generated bedRnaElements.c and bedRnaElements.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#BED6 + 3 scores for RNA Elements data 
CREATE TABLE RnaElements (
    chrom varchar(255) not null,	# Chromosome (or contig, scaffold, etc.)
    chromStart int unsigned not null,	# Start position in chromosome
    chromEnd int unsigned not null,	# End position in chromosome
    name varchar(255) not null,	# Name of item
    score int unsigned not null,	# Normalized score from 0-1000
    strand char(1) not null,	# + or -
    level float not null,	# Expression level such as RPKM or FPKM
    signif float not null,	# Statistical significance such as IDR
    score2 int unsigned not null,	# Additional measurement/count e.g. number of reads
              #Indices
    INDEX(chrom(16),chromStart),
    INDEX(name(16))
);
