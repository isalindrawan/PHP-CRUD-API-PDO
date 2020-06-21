<?php

// required header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// import db connection and contact model (query)
include_once '../config/DB.php';
include_once '../model/Contact.php';

if(isset($_PUT)) {

    $data = json_decode(file_get_contents("php://input", true), false, 512, JSON_BIGINT_AS_STRING);
    
    // initiate and create connection
    $DB = new DB();
    $connection = $DB->getConnection();

    // initiate contact object
    $contact = new Contact($connection);

    if($contact->update($data, $data->id)) {

        echo "success";

    } else {

        echo "failed";
    }
}