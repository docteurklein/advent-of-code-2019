<?php

echo array_sum(array_map(function($mass) {
    var_dump($mass);
    return floor($mass / 3) - 2;
}, file('/tmp/input', FILE_IGNORE_NEW_LINES)));
