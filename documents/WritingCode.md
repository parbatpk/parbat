# Writing Code in *Parbat*

## Steps
1. Create a table (if required)
2. Create a Data Transfor Object in **Parabat.DataObjects** ([Details](#writing-data-transfer-objects-dto))
3. Create repository interface in Parbat.BaseRepository ([Details](#repository)
4. Update Repository Factory in  Parbat.BaseRepository
5. Implement repository (for the moment we are implementing in DBRepository) ([Detalis](#parbatcoredbrepository-or-other-type-of-repository))
6. Update Factory implementation (for the moment DBRepositoryFactory in Parbat.Core.DBRepository)
7. Implement fake repositories in Parbat.Core.FakeRepository (require for testing) 
8. Create/update services in Parbat.Core.Services ([Details](#writing-services-parbatcoreservices))
9. Create/update controller in Parbat.Core.API ([Details](#writing-controller-parbatcoreapi))



## Naming Convention
- Class Names: Pascal Case
- Public Property: Pascal Case
- Global Variables: ALL CAPS
- Local Variables: camelCase
- Class Memebrs: _camelCase ( \_ + camelCase)
- Store Procedures (SPs): Pascal Case with prefix "sp" e.g. spPascalCase 
- SPs parameters: @PascalCase 

## Writing Stored Procedures
- All SPs must be saved in the **parbat\database\procds** folder.
- Naming standard: 
  - For Entities: sp[Entity][Verb]  => spCourseInsert
  - For Reports: sp[Report][Type] => spReportAllCourses
- **Insert:** should return SCOPE_IDENTITY() as the result
- **Find:** Must returns the data in JSON format. This can be acheived by using FOR JSON AUTO (see below example)
  ```
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
  ```
- List: Must returns the data in JSON format  (see below example)
```
    SELECT * From Course FOR JSON Auto;
```

## Writing Data Transfer Objects (DTO)
- We create Data Transfer Objects (DTOs) in Parbat.DataObjects project
- Each DTO represents a table in the Database. However, it is not necessary to name as same as the table name.
- All DTOs must implement in a separate file. The name of file must be the same as the name of DTO
- We may include the following namespace(s).
    ```
    using System.ComponentModel.DataAnnotations;
    ```
- All DTOs must implement IEntity interface with following propety/method:
  - Key {get}: must return primary key of the object
    ```
    public long Key
    {
        get { return this.CourseID.Value; }
    }
    ```
  - Copy: copy values from properties of given object to this object (deep copy). See below example (use the entity type instead of *Course*)
    ```
    public void Copy(IEntity entity)
    {
        Helper.Copy(typeof(Course), this, entity);
    }
    ``` 
- Each DTO will consist public properties (no other methods). The name of each property must reflect the name of columns of table in the database (case sensitive).
- Make sure that all _nullable_ attributes are defined as nullable (e.g. int?)
- Define **[Required]** attribute for each *Not Null* attributes.
- You can define other restriction such as maximum length etc
- In the following example, *Name* is required but *CurriculumTypeID* is not are requried
- Must comment each method/attribute with appropriate documenting.
```
 public class Course : IEntity
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CourseID { get; set; }

        /// <summary>
        /// Course Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// Course ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// Course OwnerID
        /// </summary>
        [Required]
        public long OwnerID { get; set; }
        /// <summary>
        /// Course TheoryCredit
        /// </summary>
        [Required]
        public int TheoryCredit { get; set; }
        /// <summary>
        /// Course LabCredit
        /// </summary>
        [Required]
        public int LabCredit { get; set; }
        /// <summary>
        /// Course Code
        /// </summary>
        public string Code { get; set; }
        /// <summary>
        /// Course CourseTypeID
        /// </summary>
        [Required]
        public long CourseTypeID { get; set; }

        public long Key
        {
            get { return this.CourseID.Value; }
        }


        public void Copy(IEntity entity)
        {
            Helper.Copy(typeof(Course), this, entity);
        }
    }
 ```

## Repository
Writing a new repository has to do perform the following steps:
- Adding repository interface in Parbat.Core.BaseRepository
- Adding a property for new repository in IRepositoryFactory of Parbat.Core.BaseRepository
- Implement Repository interface in Parbat.Core.DBRepository (or any other implementation)
- Implement Repository interface in Parbat.Core.FakeRepository for TDD (optional for the moment)

These steps are explained below:

### Writing Repostory (Parbat.Core.BaseRepository)

[1] Add new repository
- You create a new file with the name of Repository
- Name of Repository must follow as **I\[DTO Name\]Repository** e.g. ICourseRepository
- It must inherit **IGenericRepository\<T\>** where T must define as Entity. **IGenericRepository\<T\> **includes basic methods such as GetById, GetAll, Add, Update, and Delete methods.
- If we need more methods then we should add here
```
public interface ICourseRepository : IGenericRepository<Course>
{
}
```
[2] Update Factory 
- Add a new get only property with return type of repository interface. The name of the property must be like **\[DTO Name\]Repository**. 
```
public interface IRepositoryFactory
{
    ICourseRepository CourseRepository { get; }
}
```

###  Parbat.Core.DBRepository (or other type of repository)

[1] Implementing Repository
- Implement each repository in a separate file. The file name must be like \[DTO Name\]Repository
- Create a class  **\[DTO Name\]Repository** that must implement **I\[DTO Name\]Repository **(interface)
- The class must consist a private member of type **IDatabase**. This must be initialized in constructor with **Database.Instance** (see below example)
- Class must have two structures (Struct) **Procds** (to list name of Store Proceduers) and **Params** (list ofa parameters used in different SPs)
- Implement methods define in interface. (See below section for executing database queries).
```
public class CourseRepository : ICourseRepository
    {
        readonly IDatabase db;
        public CourseRepository()
        {
            db = Database.Instance;
        }

        private struct Procds
        {
            public const string Insert = "spInsertCourse";
            public const string Update = "spUpdateCourse";
            public const string Delete = "spDeleteCourse";
            public const string Find = "spFindCourse";
            public const string GetAll = "spGetAllCourse";
            public const string GetCourseName = "spGetCourseName";
            public const string FindCourseID = "spFindCourseIDComponentCourse";
        }

        private struct Params
        {
            public const string Name = "@Name";
            public const string CourseID = "@CourseID";
            public const string ShortName = "@ShortName";
            public const string OwnerID = "@OwnerID";
            public const string TheoryCredit = "@TheoryCredit";
            public const string LabCredit = "@LabCredit";
            public const string Code = "@Code";
            public const string CourseTypeID = "@CourseTypeID";
        }

        public void Add(Course c)
        {   
        }

        public void Delete(Course c)
        {
        }

        public IEnumerable<Course> GetAll()
        {
        }

        public Course GetById(long id)
        {
        }

        public void Update(Course c)
        {
        }
    }
```
 
[2] Create instance of repository in the factory
- Implement the property of new repository in the DBRepositoryFacotry as given bellow (no need to create a new file, just update DBRepositoryFacotry with a new property)
```
public class DBRepositoryFactroy : IRepositoryFactory
{
    ICourseRepository _courseRepository;

    public ICourseRepository CourseRepository
    {
        get
        {
            if (_courseRepository == null)
                _courseRepository = new CourseRepository();

            return _courseRepository;
        }
    }
}
```


### Executing database commands
- Each repository must have a *IDatabase* instance (as mentioned above)
- The executing the database command require the following steps:
  - Creating a command object using DAL methods 
  - adding parameters 
  - executing the command. If it is Get SPs then it will return JSON (Note: no explicit connection handling)
  - In case of JSON result, DeSerialize into objects. Use **DBHelper.Convert\<Course\>(string)** methods for this.

Returning single object:
```
public Course GetById(long id)
{
    DbCommand cmd = db.CreateSPCommand(Procds.Find);
    db.AddParameter(cmd, Params.CourseID, id);
    string result = Convert.ToString(db.ExecuteScalar(cmd));
    Course found = DBHelper.Convert<Course>(result);

    return found;
}
```
Returning list of objects:
```
public IEnumerable\<Course\> GetAll()
{
    List\<Course\> courses = new();

    DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
    var result = Convert.ToString(db.ExecuteScalar(cmd));

    courses = DBHelper.Convert\<Lis\t<Course\>\>(result);

    return courses;
}
```
 

## Writing Services (Parbat.Core.Services)
- Each Service is combination of functions consisting business logic
- Each service should be in a separate file and file name should be the same as service name
- Service name should be like **\<Entity OR Process\>Service** e.g. *CourseService*. It is not necessary to have separate service for each entity. A service may be called from different controllers as well.
- Each service must implement **IService** interface. It is an empty interface and use for inject services. 
**- Each service must store an Instance of protected **IRepositoryFactory** as a private class member. We must define a constructor which receives an instance of **IRepositoryFactory**  as a parameter and set it to class member.
```
public class CourseService : IService
{
    protected IRepositoryFactory _factory;

    public CourseService(IRepositoryFactory f)
    {
        _factory = f;
    }

    public Course FindByID(long id)
    {
        return _factory.CourseRepository.GetById(id);
    }
}
```
- We raise **ServiceException** to return business errors (violation of business rules).
```
public void Create(Course c)
{
    if (!(c.TheoryCredit > 0 && c.LabCredit > 0))
        throw new ServiceException("Theory and/or Lab Creidt hours are not defined.");

    _factory.CourseRepository.Add(c);

}
```

## Writing Controller (Parbat.Core.API)
- Create a controller class. 
- Make sure you have changed the route to **Global.API_CONTROLLER**
```
[Route(GlobalConstants.API_CONTROLLER)]
```
- Constructor must receives an instance of **Respective Service** (ideally it should be \<ControllerName\>Service). 

```
[Route(Global.API_CONTROLLER)]
[ApiController]
public class CourseController : Controller
{

    CourseService _service;

    /// <summary>
    /// Constructor 
    /// </summary>
    /// <param name="f">IRepositoryFactory</param>
    public CourseController(CourseService service)
    {

        _service = service;
    }
}
```
We create at least following methods

- **Get:** A GET method that receives a parameter to retruns an object against the parameter
```
[HttpGet("{id}")]
public ActionResult<Course> Get(long id)
{
    try
    {

        Course found = _service.FindByID(id);

        return Ok(found);
    }
    catch (ServiceException ex)
    {
        return BadRequest(ex.Message);
    }
}
```

- **List:** A GET method to returns all records
```
[HttpGet]
public ActionResult List()
{
    try
    {
        var courses = _service.GetAllCourses();
        return Ok(courses);
    }
    catch (ServiceException ex)
    {
        return BadRequest(ex.Message);
    }
}
```

- **Update:** A PUT method to update a record
```
 [HttpPut]
public ActionResult Update([FromBody] Course c)
{
    try
    {
        _service.Update(c);
        return NoContent();
    }
    catch (ServiceException ex)
    {
        return BadRequest(ex.Message);
    }
}
```

- **Create:** A POST method to insert a new record
```
[HttpPost]
public ActionResult<Course> Create([FromBody] Course c)
{
    try
    {
        _service.Create(c);
        return Created("Get", c);
    }
    catch (ServiceException se)
    {
        return BadRequest(se.Message);
    }

}
```
- **Delete:** A DELETE method that receives a parameter to delete a record against the parameter
```
[HttpDelete("{id}")]
public ActionResult Delete(long id)
{
    try
    {
        _service.Delete(id);
        return NoContent();
    }
    catch (ServiceException se)
    {
        return BadRequest(se.Message);
    }
}
```

- We returns following types/results for the respective type (success/fail)
  - **HttpGet:** returns  Ok()  / NotFound()
  - **HttPost:** returns Created() / BadRequest()
  - **HttpPut:** NoContent() / NotFound()
  - **HttpDelete:** NoContent / BadRequest()

- Make sure you are receving the data through right method
  - **[FromBody]** for post requests
  - **[FromQuery]** for Get Requests

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
