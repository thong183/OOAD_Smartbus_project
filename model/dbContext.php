<?php
    class Context{
        private $hostname = 'localhost';
        private $username = 'root';
        private $password = '';
        private $dbname = 'smart-bus';

        private $conn = null;
        private $result = null;
        // ket noi database
        public function connect(){
            $this->conn = new mysqli($this->hostname,$this->username,$this->password,$this->dbname);
            if(!$this->conn){
                echo"kết nối thất bại";
                exit();
            }else{
                mysqli_set_charset($this->conn,'utf-8');
            }
            return $this->conn;
        }
        // thuc hien truy van
        public function excute($sql){
            $this->result = $this->conn.query($sql);
            return $this->result;
        }
    }
?>