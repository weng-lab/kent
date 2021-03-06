/* roughAli.h was originally generated by the autoSql program, which also 
 * generated roughAli.c and roughAli.sql.  This header links the database and
 * the RAM representation of objects. */

#ifndef ROUGHALI_H
#define ROUGHALI_H

struct roughAli
/* A rough alignment - not detailed */
    {
    struct roughAli *next;  /* Next in singly linked list. */
    char *chrom;	/* Human chromosome or FPC contig */
    unsigned chromStart;	/* Start position in chromosome */
    unsigned chromEnd;	/* End position in chromosome */
    char *name;	/* Name of other sequence */
    unsigned score;	/* Score from 0 to 1000 */
    char strand[2];	/* + or - */
    unsigned otherStart;	/* Start in other sequence */
    unsigned otherEnd;	/* End in other sequence */
    };

void roughAliStaticLoad(char **row, struct roughAli *ret);
/* Load a row from roughAli table into ret.  The contents of ret will
 * be replaced at the next call to this function. */

struct roughAli *roughAliLoad(char **row);
/* Load a roughAli from row fetched with select * from roughAli
 * from database.  Dispose of this with roughAliFree(). */

struct roughAli *roughAliLoadAll(char *fileName);
/* Load all roughAli from a tab-separated file.
 * Dispose of this with roughAliFreeList(). */

struct roughAli *roughAliCommaIn(char **pS, struct roughAli *ret);
/* Create a roughAli out of a comma separated string. 
 * This will fill in ret if non-null, otherwise will
 * return a new roughAli */

void roughAliFree(struct roughAli **pEl);
/* Free a single dynamically allocated roughAli such as created
 * with roughAliLoad(). */

void roughAliFreeList(struct roughAli **pList);
/* Free a list of dynamically allocated roughAli's */

void roughAliOutput(struct roughAli *el, FILE *f, char sep, char lastSep);
/* Print out roughAli.  Separate fields with sep. Follow last field with lastSep. */

#define roughAliTabOut(el,f) roughAliOutput(el,f,'\t','\n');
/* Print out roughAli as a line in a tab-separated file. */

#define roughAliCommaOut(el,f) roughAliOutput(el,f,',',',');
/* Print out roughAli as a comma separated list including final comma. */

#endif /* ROUGHALI_H */

