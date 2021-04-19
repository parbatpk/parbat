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
|  GET |  |DataTable / Array | List | - | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists | 
|  POST |[FromBody] BO  | BO | Insert | In BO: Make sure that there is not another record with the same name | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists | 
</details>


<details>
  <summary>/Curriculum</summary>  

|  Verb | Input | Returns| Description | Business Rule(s) | 
|  --- | --- | --- | --- | --- | 
|  GET |  |DataTable / Array | List | **R1*** | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist + **R1***  
|  GET(OwnerUnit/long) | OwnerUnitID | DataTable/Array | List all curriculums having given OwnerUnitID | - | 
|  GET(CurriculumType/long) | CurriculumTypeID | DataTable/Array | List all curriculums having given CurriculumTypeID | - | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists  | 
|  POST |[FromBody] BO  | BO | Insert | + **R2*** | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists + **R3*** +**R4*** | 

- R3 = TotalCourses >= Sum (Components.TotalCourses) for this curriculum
- R4 = TotalCreditHrs >= Sum (Components.Totalcredit) for this curriculum
</details>

<details>
<Summary>/ComponentCourse</summary>

|  Verb | Input | Returns| Description | Business Rule(s) | 
|  --- | --- | --- | --- | --- | 
|  GET |  |DataTable / Array | List | - | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists | 
|  POST |[FromBody] BO  | BO | Insert | - | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists | 

Business Rules
- A component can have zero or more than zero courses
- A component should not have more courses than defined in the TotalCourses field 
- The sum of credit hours of all courses in a component should not be more than defined in the TotalCredits
- A course can not be removed from the component if the course is taken by at least one student 
</details>

<details>
<summary>/OrgUnit</summary>

|  Verb | Input | Returns| Description | Business Rule(s) | 
|  --- | --- | --- | --- | --- | 
|  GET |  |DataTable / Array | List | - |
|  GET (Parent/long) | id |DataTable / Array | List all OrgUnits having ParentID = id | - | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists | 
|  POST |[FromBody] BO  | BO | Insert | - | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists | 
</details>

<details>
<summary>/Student</summary>

|  Verb | Input | Returns| Description | Business Rule(s) | 
|  --- | --- | --- | --- | --- | 
|  GET |  |DataTable / Array | List | - | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists | 
|  POST |[FromBody] BO  | BO | Insert | - | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists | 
</details>

<details>
<summary>/StudentStatus</summary>

|  Verb | Input | Returns| Description | Business Rule(s) | 
|  --- | --- | --- | --- | --- | 
|  GET |  |DataTable / Array | List | - | 
|  GET(long) | PK | BO | Find | Returns NotFound() if record does not exist | 
|  Delete(long) | PK | - | Delete | Returns BadRequest() if record does not exists | 
|  POST |[FromBody] BO  | BO | Insert | - | 
|  PUT |[FromBody] BO  | - | Insert | Returns BadRequest() if record does not exists | 
</details>
