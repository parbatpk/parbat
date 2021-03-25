# Writing Code in *Parbat*

## Naming Convention
- Class Names: Pascal Case
- Public Property: Pascal Case
- Global Variables: ALL CAPS
- Local Variables: camelCase
- Class Memebrs: _camelCase (_ + camelCase)
- Store Procedures (SPs): Pascal Case with prefix "sp" e.g. spPascalCase 
- SPs parameters: @PascalCase 

## Writing Stored Procedures
- Create a struct with same as name of _Table Name_ in **Parbat.Data.ProceduresNames**
- All SPs must be saved in the **parbat\database\procds** folder.
- Create entries for Insert/Update/Delete/Find/List with respective SPs name
- **Insert:** should return SCOPE_IDENTITY() as the result
- **Update:** If the record does not exist then raise error
- **Delete:** If the record deos not exist then raise error
- **Find:** If the record does not exist then raise error
  - Must returns a JSON object. This can be acheived by using FOR JSON AUTO (see below example)
  ```
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
  ```
  - Deserialize this object using JsonSerializer.Deserialize<>
  ```
  string txt = Convert.ToString(cmd.ExecuteScalar());
  CurriculumType found  = JsonSerializer.Deserialize<CurriculumType>(txt);
  ```
- List: does not raise error

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
- Make sure that all _nullable_ attributes are defined as nullable (e.g. int?)
- Define **[Required]** attribute for each *Not Null* attributes.
- Do not define Primary Key as required attribute 
- You can define other restriction such as maximum length etc
- In the following example, *Name* is required but *CurriculumTypeID* is not are requried
- Must comment each method/attribute with appropriate documenting.
- Implement the businsess logic as given in Services' document
```
 /// <summary>
    /// Curriculum Type Table
    /// </summary>
    public class CurriculumType : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CurriculumTypeID { get; set; }

        /// <summary>
        /// Curriculum Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Delete curriculum type
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find Curriculum Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    CurriculumType found = JsonSerializer.Deserialize<CurriculumType>(txt);
                    return found;
                }
                catch(JsonException je)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get All curriculum type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.GetAll, con);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Save Curruciulum Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            // If this is already saved object then just update
            if (this.CurriculumTypeID > 0)
            {
                this.Update(db);
                return this.CurriculumTypeID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                this.CurriculumTypeID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.CurriculumTypeID;
            }


        }

        /// <summary>
        /// Update Curriculum Type
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                cmd.ExecuteNonQuery();
            }
        }
    }```
### Executing database commands
- Each method must receive a *IDatabase* instance
- We must first create a connection using *IDatabase.CraeteConnection* method
- Then we create a stored procedure command object using *IDatabase.CreateSPCommand* method
- We add parameters using *IDatabase.CreateParameter* method
```
 using (DbConnection con = db.CreateConnection())
{
    DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Insert, con);
    cmd.Parameters.Add(db.CreateParameter(cmd, "@FName", this.FirstName));
    cmd.Parameters.Add(db.CreateParameter(cmd, "@LName", this.LastName));

    con.Open();
    return (Convert.ToInt32(cmd.ExecuteScalar()));
}
```

#### Executing Store Proecuders
```
    DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Insert, con);
    cmd.Parameters.Add(db.CreateParameter(cmd, "@FName", this.FirstName));
    cmd.Parameters.Add(db.CreateParameter(cmd, "@LName", this.LastName));
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

### We create at least following methods
- **Get:** retruns an object for the Primary Key
```
[HttpGet("{id}")]
public ActionResult<CurriculumType> Get(long id)
{
	CurriculumType c = new CurriculumType();
        c.CurriculumTypeID = id;
        c = c.Find(Database.Instance) as CurriculumType;
	if (c.CurriculumTypeID > 0)
		return Ok(c);
	else
        	return NotFound();
     }
```
- **List:** returns all records
```
[HttpGet]
public ActionResult List()
{
	CurriculumType c = new CurriculumType();
	return Ok(c.GetAll(Database.Instance));
}
```
- **Update:** update on instance of a record
```
[HttpPut]
public ActionResult Update([FromBody]CurriculumType ctype)
{
	if (ctype.CurriculumTypeID != null && ctype.CurriculumTypeID > 0)
        {
        	ctype.Update(Database.Instance);
                return NoContent();
        }
        else
        	return BadRequest();                
}
```
- **Create:** Insert a new record
```
[HttpPost]
public ActionResult<CurriculumType> Create([FromBody]CurriculumType ctype)
{
  	ctype.Save(Database.Instance);
        return Created("Get", ctype);
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
