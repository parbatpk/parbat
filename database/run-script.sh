#!/bin/bash

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MyPass@1234 -d master -i setup.sql
#cat /sps/*.sql >combine_sps.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MyPass@1234 -d ParbatDB -i combine_sps.sql


