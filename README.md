# PsSqlTools

PsSqlTools is a PowerShell container module that aims to provide specialized and compatible modules that support the professional development of Microsoft SQL solutions in Azure and on-prem.

## The modules and their purpose

- [PsSqlClient](https://github.com/abbgrade/PsSqlClient) replaces the SQL Server utilities [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility) and [bcp](https://learn.microsoft.com/en-us/sql/tools/bcp-utility) with native PowerShell commands, based on [SqlClient](https://github.com/dotnet/SqlClient), focused on connections and SQL queries.
- [PsSmo](https://github.com/abbgrade/PsSmo) replaces the SQL Server utilities [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility) with native PowerShell commands, based on [SQL Server Management Objects (SMO)](https://learn.microsoft.com/en-us/sql/relational-databases/server-management-objects-smo/overview-smo), focused on SQL script execution and SQL database management.
- [PsDac](https://github.com/abbgrade/PsDac) replaces [SqlPackage](https://learn.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage) with native PowerShell commands, based on [DacFx](https://github.com/microsoft/DacFx), focused on database deployment.

## Components, Versions and Compatibility

Since this module uses some DotNet libraries and PowerShell is not totally robust against assembly version conflicts, this module uses dependencies with aligned versions.

| Module      | Version | Azure.Identity | Microsoft.Data.SqlClient | Microsoft.SqlServer.Smo | Microsoft.SqlServer.Dac |
| ----------- | ------- | -------------- | ------------------------ | ----------------------- | ----------------------- |
| PsSqlClient | 2.3.0   | 1.13.0         | 5.2.3                    |                         |                         |
| PsSmo       | 1.4.0   | 1.13.0         | 5.2.3                    | 180.10.0                |                         |
| PsDac       | 1.8.0   | 1.13.0         | 5.2.3                    |                         | 170.2.70                |

### Microsoft.SqlServer.Smo

PsSmo uses Microsoft.SqlServer.Smo and introduces a dependency to Microsoft.Data.SqlClient.

| Version  | Microsoft.Data.SqlClient |
| -------- | ------------------------ |
| 170.2.70 | >= 5.1.6                 |

### Microsoft.SqlServer.Dac

PsDac uses Microsoft.SqlServer.Dac and introduces a dependency to Microsoft.Data.SqlClient.

| Version  | Microsoft.Data.SqlClient |
| -------- | ------------------------ |
| 170.2.70 | >= 5.1.7                 |

### Microsoft.Data.SqlClient

PsSqlClient uses Microsoft.Data.SqlClient and introduces a dependency to Azure.Identity.

| Version  | Azure.Identity |
| -------- | -------------- |
| 5.2.3    | >= 1.11.4      |

### Azure PowerShell Long Term Support

PsSqlTools is often used with the Azure PowerShell module, especially the Az.Accounts module, which depends on Azure.Identity.

| Major Version | Latest Minor | Support End | Az.Accounts | Azure.Identity | Microsoft.Identity.Client |
| ------------- | ------------ | ----------- | ----------- | -------------- | ------------------------- |
| 12            | 5.0          | 2025        | >= 3.0.5    | 1.13.0         | 4.65.0                    |
| 14            | 5.0          | 2026        | >= 5.3.0    | 1.13.0         | 4.65.0                    |
| 16            |              |             |             |                |                           |

### Azure.Identity

Microsoft.Data.SqlClient and Az.Accounts use Azure.Identity which depends on Microsoft.Identity.Client.

| Version | Microsoft.Identity.Client |
| ------- | ------------------------- |
| 1.11.4  | 4.61.3                    |
| 1.13.0  | 4.65.0                    |
