# Writing Code in * Parbat * 

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
-- [FromQuery] for 
