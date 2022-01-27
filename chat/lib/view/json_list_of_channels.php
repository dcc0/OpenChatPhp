<?php
    require_once 'Class_ListChannels.php';
    print json_encode(ListChannels::getChannels());