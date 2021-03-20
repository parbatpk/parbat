# Writing Code in *Parbat*

## Naming Convention
- Class Names: Pascal Case
- Public Property: Pascal Case
- Global Variables: ALL CAPS
- Local Variables: camelCase
- Class Memebrs: _camelCase (_ + camelCase)

## Writing Business Objects
- All business objects must be created as a separate file in the Model folder
- Include the following name spaces
```
using System.Data;
using System.Data.Common;
using System.ComponentModel.DataAnnotations;
using Parbat.Data;
```
- All business objects must implement ** IBusinessObject** interface
```
public class Student : IBussinesObject
```
- Implement all methods of the interface
- Define **[Required]** attribute for each * Not Null * attributes. 
- You can define other restriction such as maximum length etc
- In the following example, *First Name* and *Last Name* are requried 
- Must comment each method/attribute with appropriate documenting.
```
/// <summary>
        /// First Name of the student
        /// </summary>
        [Required]
        [MaxLength(50)]
        public string FirstName { get; set; }
        /// <summary>
        /// Last Name of student
        /// </summary>
        [Required]
        public string LastName { get; set; }

        /// <summary>
        /// Delete the record from the database
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public int Delete(IDatabase db)
        {
            throw new NotImplementedException();
        }
```
### Executing database commands
- Each method must receive a *IDatabase* instance
- We must first create a connection using *IDatabase.CraeteConnection* method
- Then we create a stored procedure command object using *IDatabase.CreateSPCommand* method
- We add parameters using *IDatabase.CreateParameter* method
```
 using (DbConnection con = db.CreateConnection())
            {
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Insert, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "FName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LName", this.LastName));

                con.Open();
                return (Convert.ToInt32(cmd.ExecuteScalar()));
            }
```

#### Executing Store Proecuders
```
         DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Insert, con);
         cmd.Parameters.Add(db.CreateParameter(cmd, "FName", this.FirstName));
         cmd.Parameters.Add(db.CreateParameter(cmd, "LName", this.LastName));
		 con.Open();
         return (Convert.ToInt32(cmd.ExecuteScalar()));
```

#### Executing SPs for Dataset
```
            DbConnection con = db.CreateConnection();
            con.Open();
            DbCommand cmd = db.CreateSPCommand("GetAllUniversities", con);
            DataSet r = db.GetDataSet(cmd);
            return r;

```

## Writing Controller
- Create a controller class
- Add namespace Parbat.Data
```
using Parbat.Data
```
- Make sure you have changed the route to **GlobalConstants.API_CONTROLLER**
```
[Route(GlobalConstants.API_CONTROLLER)]
```
- Create appropriate methods with respected **VERBS**
  -- HttpGet : returns  Ok()  / NotFound()
  -- HttPost: returns Created() / BadRequest()
  -- HttpPut: NoContent() / NotFound()
  -- HttpDelete:NoContent / BadRequest()
- Write code in try/catch
- Make sure you are receving the data through right method
  -- [FromBody] for post requests
  -- [FromQuery] for Get Requests

```
/// <summary>
    /// A student controller
    /// </summary>
    [Route(GlobalConstants.API_CONTROLLER)]
    [ApiController]
    public class StudentController : ControllerBase
    {
        /// <summary>
        /// A test function
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<Student> SaveStudent([FromBody] Student student)
        {
            try
            {
                int r = student.Save(Database.Instance);
                student.StudentId = r;
                if (student.StudentId > 0)
                    return Created("GetStudentById", student.StudentId);
                else
                    return BadRequest();
            }
            catch (Exception e)
            {

                return BadRequest(e.Message);
            }

        }

        /// <summary>
        /// get at student by Id
        /// </summary>
        /// <param name="studentId"></param>
        /// <returns></returns>
        [HttpGet("{studentId}")]
        public ActionResult<Student> GetStudentById(int studentId)
        {
            Student s = new Student(studentId);
            s = s.Find(Database.Instance) as Student;
            if (s != null)
                return Ok(s);

            return NotFound();
        }

        /// <summary>
        /// Update a student instance
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        [HttpPut]
        public ActionResult<Student> UpdateStudent([FromBody] Student s)
        {
            try
            {
                s.Update(Database.Instance);
                return NoContent();
            }
            catch(Exception e)
            {
                return NotFound(e.Message);
            }
        }

        /// <summary>
        /// Delete a student by Id
        /// </summary>
        /// <param name="studentId"></param>
        /// <returns></returns>
        [HttpDelete("{studentId}")]
        public ActionResult<Student> DeleteStudentById(int studentId)
        {
            try
            {
                Student s = new Student(studentId);
                s.Delete(Database.Instance);
                return NoContent();
            }
            catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }
   

        /// <summary>
        /// Return all students
        /// </summary>
        /// <returns></returns>
        [HttpGet("all")]
        public ActionResult GetAllStudent()
        {
            try
            {
                Student s = new Student();
                DataSet ds = s.GetAll(Database.Instance);

                return Ok(ds.Tables[0]);

            }
            catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
```