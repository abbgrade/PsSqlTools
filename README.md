# PsSqlTools

PsSqlTools is a PowerShell container module that aims to provide specialized and compatible modules that support the professional development of Microsoft SQL solutions in Azure and on-prem.

## The modules and their purpose

- [PsSqlClient](https://github.com/abbgrade/PsSqlClient) replaces the SQL Server utilities [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility) and [bcp](https://learn.microsoft.com/en-us/sql/tools/bcp-utility) with native PowerShell commands, based on [SqlClient](https://github.com/dotnet/SqlClient), focused on connections and SQL queries.
- [PsSmo](https://github.com/abbgrade/PsSmo) replaces the SQL Server utilities [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility) with native PowerShell commands, based on [SQL Server Management Objects (SMO)](https://learn.microsoft.com/en-us/sql/relational-databases/server-management-objects-smo/overview-smo), focused on SQL script execution and SQL database management.
- [PsDac](https://github.com/abbgrade/PsDac) replaces [SqlPackage](https://learn.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage) with native PowerShell commands, based on [DacFx](https://github.com/microsoft/DacFx), focused on database deployment.

## Components and Versions

| Module      | Version | Microsoft.Identity.Client | Microsoft.Data.SqlClient | Microsoft.SqlServer.Smo | Microsoft.SqlServer.Dac |
| ----------- | ------- | ------------------------- | ------------------------ | ----------------------- | ----------------------- |
| PsSqlClient | 2.2.0   | 4.47.2.0                  | 5.1.1                    |                         |                         |
| PsSmo       | 1.3.0   | 4.47.2.0                  | 5.1.1                    | 17.100.18               |                         |
| PsDac       | 1.7.0   | 4.48.1.0                  | 5.1.1                    |                         | 162.1.167               |
