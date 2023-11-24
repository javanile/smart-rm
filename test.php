<?php

require_once 'index.php';

$files =
    "20220106120000_test.zip"."\n".
    "20220107120000_test.zip";

process($files, "test", "1 *");
