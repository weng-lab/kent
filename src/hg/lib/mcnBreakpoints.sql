# mcnBreakpoints.sql was originally generated by the autoSql program, which also 
# generated mcnBreakpoints.c and mcnBreakpoints.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Chromosomal breakpoints from the MCN Project
CREATE TABLE mcnBreakpoints (
    chrom varchar(25) not null,	# Human chromosome number
    chromStart int unsigned not null,	# Start position in genoSeq
    chromEnd int unsigned not null,	# End position in genoSeq
    name varchar(255) not null,	# Shortened Traitgroup Name
    score int unsigned not null,	# Always 1000 for now
    caseId varchar(255) not null,	# MCN Case ID
    bpId varchar(255) not null,	# MCN Breakpoint ID
    trId varchar(255) not null,	# MCN Trait ID
    trTxt varchar(255) not null,	# MCN Trait name
    tgId varchar(255) not null,	# MCN Traitgroup ID
    tgTxt varchar(255) not null,	# MCN Traitgroup Name
              #Indices
    Index(chrom,chromStart)
);
