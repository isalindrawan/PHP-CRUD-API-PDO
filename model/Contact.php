<?php

class Contact {

    private $connection;
    private $table = "contact";

    public function __construct($connect) {

        $this->connection = $connect;
    }

    function read() {

        // query all contact data
        $query = "select * from contact
        left join address on contact.address_id = address.address_id
        left join name on contact.name_id = name.name_id
        left join personal on contact.personal_id = personal.personal_id";

        $statement = $this->connection->prepare($query);

        $statement->execute();

        return $statement;
    }

    function get_detail($id) {

        // query all contact data
        $query = "select * from contact
        left join address on contact.address_id = address.address_id
        left join name on contact.name_id = name.name_id
        left join personal on contact.personal_id = personal.personal_id where contact.contact_id = " . $id;

        $statement = $this->connection->prepare($query);

        $statement->execute();

        return $statement;
    }

    function create($data) {

        // query to insert record
        $address = "INSERT INTO address(STREET, STREET_2, CITY, PROVINCE, COUNTRY, POSTAL) VALUES(:street,:street_2,:city,:province,:country,:postal)";

        // query to insert record
        $name = "INSERT INTO name(PREFIX, FIRST_NAME, MID_NAME, LAST_NAME, SUFFIX, NICKNAME) VALUES(:prefix,:first_name,:mid_name,:last_name,:suffix,:nickname)";

        // query to insert record
        $personal = "INSERT INTO personal(BIRTHDAY, JOB_TITLE, DEPARTMENT, COMPANY, WEBSITE, NOTE) VALUES(:birthday,:job,:department,:company,:website,:note)";
        
        $this->data_address($data, $address);
        $this->data_name($data, $name);
        $this->data_personal($data, $personal);

        // query to insert record
        $query = "INSERT INTO contact(ADDRESS_ID, NAME_ID, PERSONAL_ID, EMAIL, PHONE, MOBILE) VALUES((select address_id from address order by address_id desc limit 1), (select name_id from name order by name_id desc limit 1), (select personal_id from personal order by personal_id desc limit 1), :email, :phone, :mobile)";

        // prepare query
        $statement = $this->connection->prepare($query);

        // bind values
        $statement->bindParam(":email", $data->email);
        $statement->bindParam(":phone", $data->phone);
        $statement->bindParam(":mobile", $data->mobile);

        if($statement->execute()) {

            return true;
        
        } else {

            return false;
        }
    }

    function update($data, $id) {

        // query to insert record
        $address = "UPDATE address SET STREET=:street, STREET_2=:street_2, CITY=:city, PROVINCE=:province, COUNTRY=:country, POSTAL=:postal WHERE ADDRESS_ID = " . $id;

        // query to insert record
        $name = "UPDATE name SET PREFIX:=prefix, FIRST_NAME:=first_name, MID_NAME:=mid_name, LAST_NAME:=last_name, SUFFIX:=suffix, NICKNAME:=nickname WHERE NAME_ID = " . $id;

        // query to insert record
        $personal = "UPDATE personal SET BIRTHDAY=:birthday, JOB_TITLE=:job, DEPARTMENT=:department, COMPANY=:company, WEBSITE=:website, NOTE=:note WHERE PERSONAL_ID = " . $id;
        
        $this->data_address($data, $address);
        $this->data_name($data, $name);
        $this->data_personal($data, $personal);

        // query to insert record
        $query = "UPDATE contact SET EMAIL=:email, PHONE=:phone, MOBILE=:mobile WHERE CONTACT_ID = " . $id;

        // prepare query
        $statement = $this->connection->prepare($query);

        // bind values
        $statement->bindParam(":email", $data->email);
        $statement->bindParam(":phone", $data->phone);
        $statement->bindParam(":mobile", $data->mobile);

        if($statement->execute()) {

            return true;
        
        } else {

            return false;
        }
    }

    function delete($id) {

        // query to insert record
        $query = "DELETE FROM contact WHERE CONTACT_ID = " . $id;

        // prepare query
        $statement = $this->connection->prepare($query);

        if($statement->execute()) {

            return true;
        
        } else {

            return false;
        }
    }

    function data_address($data, $query) {

        // prepare query
        $statement = $this->connection->prepare($query);

        // bind values
        $statement->bindParam(":street", $data->street);
        $statement->bindParam(":street_2", $data->street_2);
        $statement->bindParam(":city", $data->city);
        $statement->bindParam(":province", $data->province);
        $statement->bindParam(":country", $data->country);
        $statement->bindParam(":postal", $data->postal);

        $statement->execute();
    }

    function data_name($data, $query) {

        // prepare query
        $statement = $this->connection->prepare($query);

        // bind values
        $statement->bindParam(":prefix", $data->prefix);
        $statement->bindParam(":first_name", $data->first_name);
        $statement->bindParam(":mid_name", $data->mid_name);
        $statement->bindParam(":last_name", $data->last_name);
        $statement->bindParam(":suffix", $data->suffix);
        $statement->bindParam(":nickname", $data->nickname);

        $statement->execute();
    }

    function data_personal($data, $query) {

        // prepare query
        $statement = $this->connection->prepare($query);

        // bind values
        $statement->bindParam(":birthday", $data->birthday);
        $statement->bindParam(":job", $data->job);
        $statement->bindParam(":department", $data->department);
        $statement->bindParam(":company", $data->company);
        $statement->bindParam(":website", $data->website);
        $statement->bindParam(":note", $data->note);

        $statement->execute();
    }
}