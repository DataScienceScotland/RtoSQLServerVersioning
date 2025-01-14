% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_schema_tables.R
\name{show_schema_tables}
\alias{show_schema_tables}
\title{Show all tables (and optionally views) in a schema}
\usage{
show_schema_tables(server, database, schema, include_views = FALSE)
}
\arguments{
\item{server}{Server instance where SQL Server database running.}

\item{database}{Database containing schema to list tables from.}

\item{schema}{Name of database schema to list tables from.}

\item{include_views}{If TRUE includes views as well as tables and adds
an object_type column to indicate which each is. Defaults to FALSE.}
}
\value{
Dataframe of table names, creation dates and optionally whether
table or view.
}
\description{
Returns a data frame of table name, creation date and optionally whether
table or view. Queries MS SQL Server sys.tables or
sys.objects to extract this information.
}
\examples{
\dontrun{
show_schema_tables(
  server = "my_server",
  database = "my_database",
  schema = "my_schema",
  include_views = TRUE
)
}
}
