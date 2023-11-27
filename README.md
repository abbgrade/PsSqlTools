# PsSqlTools

PsSqlTools is a PowerShell container module that aims to provide specialized and compatible modules that support the professional development of Microsoft SQL solutions in Azure and on-prem.

## The modules and their purpose

- [PsSqlClient](https://github.com/abbgrade/PsSqlClient) replaces the SQL Server utilities [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility) and [bcp](https://learn.microsoft.com/en-us/sql/tools/bcp-utility) with native PowerShell commands, based on [SqlClient](https://github.com/dotnet/SqlClient), focused on connections and SQL queries.
- [PsSmo](https://github.com/abbgrade/PsSmo) replaces the SQL Server utilities [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility) with native PowerShell commands, based on [SQL Server Management Objects (SMO)](https://learn.microsoft.com/en-us/sql/relational-databases/server-management-objects-smo/overview-smo), focused on SQL script execution and SQL database management.
- [PsDac](https://github.com/abbgrade/PsDac) replaces [SqlPackage](https://learn.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage) with native PowerShell commands, based on [DacFx](https://github.com/microsoft/DacFx), focused on database deployment.
