<?php

class DB {

    private $host = "localhost";
    private $db_name = "contact_rest";
    private $username = "root";
    private $password = "";
    public $connection;

    public function getConnection() {

        $this->connection = null;

        try {

            $this->connection = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);

            $this->connection->exec("set utf8");

        } catch (PDOException $exception) {

            echo "Something isn't right : " . $exception->getMessage();
        }

        return $this->connection;
    }
}