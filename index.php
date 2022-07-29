<?php

var_dump((new Request())->get('/users'));

die();

class Request
{
    public function get($endpoint)
    {
        $result = [
            'message' => 'It will be ok.',
        ];

        return $result;
    }
}