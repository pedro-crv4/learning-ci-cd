<?php

require './index.php';

test('Test if the endpoint returns some info', function () {
    $requestService = new Request();

    $result = $requestService->get('/users');

    $this->assertEquals($result['message'], 'It will be ok.');
});
