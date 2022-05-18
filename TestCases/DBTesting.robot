*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem


Suite Setup    Connect To Database  pymysql     ${DbName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPost}
Suite Teardown    Disconnect From Database

*** Variables ***
${DbName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.0.1
${DBPost}       3306

*** Test Cases ***
Create person table
#Create a Table
   ${output}=  execute sql string    Create table person(id integer,first_name varchar(20),last_Name varchar(2));
   log to console    ${output}
   should be equal as strings    ${output}      None

 #Insert single Data in a table
Inserting Data in Table
    ${output}=  execute sql string    Insert into person values(101,"John","canady");
    log to console    ${output}
    should be equal as strings    ${output}      None

 #Insert multiple data in a table
Inserting Data in Table
    ${output}=  execute sql script    ../TestDate/mydb_person_insertData.sql
    log to console    ${output}
    should be equal as strings    ${output}      None

 #Validae Data
Check Record in a table
    check if exists in database    select id from mydb.person where first_name="David";
    check if not exists in database    exists in database    select id from mydb.person where first_name="Jio";
#Validat table list in DB
    table must exist    person

Verify Row Count is Zero
    row count is 0    Select * from mydb.person where first_name="xyz";

Update record in a table
    ${output}=  execute sql string    Update mydb.person set first_name="Jio" where id=104;
    log to console    ${output}
    should be equal as strings    ${output}     None

Retreive Records from a table
    ${queryresult}=     query    Select * from mydb.person
    log to console    many      ${queryresult}

Delect Recored from a Table
    ${output}=  execute sql string    Delete from mydb.person
    should be equal as strings    ${output}     None