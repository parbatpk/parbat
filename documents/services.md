## CRUD-L Template
The following operations should be referred whenever CRUD-L is defind
- BO = Business Object, PK = Primary Key

|  Verb | Input | Returns| Description | Business Rule(s) | 
|  --- | --- | --- | --- | --- | 
|  GET |  |DataTable / Array | List | - | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists | 
|  POST |[FromBody] BO  | BO | Insert | - | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists | 

For Guideline on writing code [see] (/WritingCode.md) 

## Services

<details>
<summary> /CurriculumType </summary>

|  Verb | Input | Returns| Description | Business Rule(s) |
|  --- | --- | --- | --- | --- |
|  CRUD-L | - |-  | - | - |

</details>

<details>
<summary> /ComponentType </summary>

|  Verb | Input | Returns| Description | Business Rule(s) |
|  --- | --- | --- | --- | --- |
|  CRUD-L | - |-  | - | - |

</details>

<details>
<summary> /CourseType </summary>

|  Verb | Input | Returns| Description | Business Rule(s) |
|  --- | --- | --- | --- | --- |
|  CRUD-L | - |-  | - | - |

</details>

<details>
<summary> /StudentStatus </summary>

|  Verb | Input | Returns| Description | Business Rule(s) |
|  --- | --- | --- | --- | --- |
|  CRUD-L | - |-  | - | - |

</details>

<details>
<summary> /OrgUnitType </summary>

|  Verb | Input | Returns| Description | Business Rule(s) |
|  --- | --- | --- | --- | --- |
|  CRUD-L | - |-  | - | - |

</details>

<details>
<summary> /Course </summary>

|  Verb | Input | Returns| Description | Business Rule(s) |
|  --- | --- | --- | --- | --- |
|  CRUD-L | - |-  | - | - |

</details>

