<?php

require './index.php';

test('Test if the endpoint returns some info', function () {
    $requestService = new Request();

    $this->assertEquals($requestService->get('/users'), 'Some info.');
});
