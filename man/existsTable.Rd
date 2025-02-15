% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ListTables.R
\name{existsTable}
\alias{existsTable}
\title{Does the table exist?}
\usage{
existsTable(connection, databaseSchema, tableName)
}
\arguments{
\item{connection}{The connection to the database server created using either
\code{\link[=connect]{connect()}} or \code{\link[DBI:dbConnect]{DBI::dbConnect()}}.}

\item{databaseSchema}{The name of the database schema. See details for platform-specific details.}

\item{tableName}{The name of the table to check.}
}
\value{
A logical value indicating whether the table exits.
}
\description{
Checks whether a table exists. Accounts for surrounding escape characters.
Case insensitive.
}
\details{
The \code{databaseSchema} argument is interpreted differently according to the different platforms:
SQL Server and PDW: The databaseSchema schema should specify both the database and the schema, e.g.
'my_database.dbo'. Impala: the databaseSchema should specify the database. Oracle:
The databaseSchema should specify the Oracle 'user'. All other : The databaseSchema should
specify the schema.
}
