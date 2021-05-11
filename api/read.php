<?php

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// import db connection and contact model (query)
include_once '../config/DB.php';
include_once '../model/Contact.php';

// initiate connection
$DB = new DB();
$connection = $DB->getConnection();

// initiate contact object
$contact = new Contact($connection);

// execute query in read function inside contact class
$data = $contact->read();
$num = $data->rowCount();

// check returned data
if ($num > 0) {
    
    $contact_data = array();

    while ($row = $data->fetch(PDO::FETCH_ASSOC)) {

        // extract row data (record)
        extract($row);

        // get data from record
        $record = array(
            "contact_id" => $row['CONTACT_ID'],
            "address_id" => $row['ADDRESS_ID'],
            "name_id" => $row['NAME_ID'],
            "personal_id" => $row['PERSONAL_ID'],
            "email" => $row['EMAIL'],
            "phone" => $row['PHONE'],
            "mobile" => $row['MOBILE'],
            "prefix" => $row['PREFIX'],
            "first_name" => $row['FIRST_NAME'],
            "mid_name" => $row['MID_NAME'],
            "last_name" => $row['LAST_NAME'],
            "suffix" => $row['SUFFIX'],
            "nickname" => $row['NICKNAME'],
            "street" => $row['STREET'],
            "street_2" => $row['STREET_2'],
            "city" => $row['CITY'],
            "province" => $row['PROVINCE'],
            "country" => $row['COUNTRY'],
            "postal" => $row['POSTAL'],
            "birthday" => $row['BIRTHDAY'],
            "job_title" => $row['JOB_TITLE'],
            "department" => $row['DEPARTMENT'],
            "company" => $row['COMPANY'],
            "website" => $row['WEBSITE'],
            "note" => $row['NOTE']
        );

        // push data to array
        array_push($contact_data, $record);
    }

    echo json_encode($contact_data);

} else {

    echo "no record found";
}
