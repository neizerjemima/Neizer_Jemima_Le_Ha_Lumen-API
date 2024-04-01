<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});
//LIPS
$router->get("/lips", "LipController@getAll");
$router->get("/lips/{id}", "LipController@getOne");
$router->post("/lips/add", "LipController@save");
$router->post('/lips/edit/{id}', 'LipController@update');
$router->delete('/lips/delete/{id}', 'LipController@delete');

//TYPES
$router->get("/types", "TypeController@getAll");
$router->get("/types/{id}", "TypeController@getOne");
$router->post("/types/add", "TypeController@save");
$router->post('/types/edit/{id}', 'TypeController@update');
$router->delete('/types/delete/{id}', 'TypeController@delete');

//BENEFIT
$router->get("/benefits", "BenefitController@getAll");
$router->get("/benefits/{id}", "BenefitController@getOne");
$router->post("/benefits/add", "BenefitController@save");
$router->post('/benefits/edit/{id}', 'BenefitController@update');
$router->delete('/benefits/delete/{id}', 'BenefitController@delete');

//LIPSBENEFIT
$router->get("/lips_benefits", "Lips_BenefitController@getAll");
$router->get("/lips_benefits/{id}", "Lips_BenefitController@getOne");
$router->post("/lips_benefits/add", "Lips_BenefitController@save");
$router->post('/lips_benefits/edit/{id}', 'Lips_BenefitController@update');
$router->delete('/lips_benefits/delete/{id}', 'Lips_BenefitController@delete');


