# University and Student
**OrgUnit:** An organization unit defines the organization or the a part of organization. It has a self-relation i.e. a sub-part is connected to the parent part. For example: Department is a sub-part of a university (like Employee-Manager relationship).

**Batch:**
- a

**Student:** 
- The student table will contain only those information which are not associated with any specific program
- The information about batch, programs etc will not contain in this table
- StudentGroup: A student can be part of a group - a group is a virtual divide of students
- StudenProgram: when a student register/entroll for a program/degree 

# Currciulum

**Course**
- Cuorse may contain Theory credit and lab creidt
- A course may have different type
- 
**Curriculum **
- Create different curriculia with different components.
- Each component may contain different courses
- A component can be compulsory or elective
- A component have maximum number of courses and/or maximum number of credit hours
- A curriculum can be defined for an organization unit.

# Registration 

**Term:** An academic period.

**Semester:** Which group assigned which semester - will be used in course offering. A course can be offered to a Semester 

**Registration:** A student register in a class 

**Offering:** A course offered for a sepcific term and Semester to an organization unit

**ClassMapping:** Number of classes offered for a course

**Class:** A class in which a student registered

**ClassModule:** A class may contain different module such as Lab and Theory are different moduels. A faculty assigned to a module

**Faculty:** Information about Faculty

- Define terms with start and end date
- Define Semester if we want to offer courses on the basis of a sepcific semester. A semester is defined against a student group
- Offer courses from a curriculum for a sepcific term (madatory), Semster and organzation unit (mandatory). 
- For offered courses, we should define number of classes to be offered with capacity for each class
- For each class - we defined modules and allocate faculty for each module.
- Student can regigster for any specific class

