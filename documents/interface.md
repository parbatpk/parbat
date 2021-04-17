# Organization Structure
- [GET] /OrgUnit/Type : returns all OrgUnitType 
- [GET] /OrgUnit/ :  returns Top most org unit with only its children
- [GET] /OrgUnit/Children/(id) :  returns children of given org unit
- [CRUD] /OrgUnit

# Course
- [CRUD-L] /Course
- [GET] /CourseType : returns all course type
- [GET] /CourseType(string) : returns all course type which matches the criteria given in the string
- [GET] /OrgUnit(string): returns all org. unit which matches the criteria - output should be in the form of OrgUnit/SubUnit/SubUnit e.g. UIT/CS/BS(CS)/

# Curriculum
- [GET] /CurriculumType(string) : returns all Curriculum Type which matches the criteria given in the string
- [GET] /OrgUnit/Degree(string) : returns all org unit for which IsAllowedAdmission is true (degree programs)
- [CRUD-L] /Curriculum

# Component
- [CRUD-L] /Component
- [GET] /Component/Summary(component id) : returns total number of courses and total credit hours

- [GET] /ComponentType (string) : returns all w.r.t. matching criteria
- [GET] /Component/Course(componnet id)
- [CRUD-L] /Component/Course 
- [GET] /Component/Course/Summary(component id) : returns number of courses and credit hours (T+L) for assigned courses to the component 

