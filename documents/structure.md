# Structure 

## Parbat.Core.API
- Consisting controllers 
- Receive request, process, and response
- Use Services (defined in Parbat.Core.Services) to process requests
- No direct interaction with Database/Repositories
- Error handling should be done here - what to repond at what error

## Parbat.Core.Services
- Consisting business logic
- We evaluate each request and perform work as per business rules
- We should raise **ServiceException** in case of any violation of business rules
- Interact to database using Repositories through Repsitory Factory.

## Parbat.Core.DataObjects
- Data objects to transfer data between requests (From web to API and among layers)
- A data object is equivalent to a table in the database (exceptions can be)
- no business logic involved
- 
## Parbat.Core.BaseRepository
- Consisting interfaces for all repositories and factory

## Parbat.Core.DBRepository
- Implementation of repositories for SQL/Oracle/MySQL (using Parbat.DAL)

## Parbat.Core.FakeRepository
- Implementation of repositories on List objects

## Parbat.Data
- Generic DAL for SQL/Oracle/MySQL