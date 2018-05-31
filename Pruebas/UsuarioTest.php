<?php

namespace Tests\Unit;

use Tests\TestCase;
use Create\Clients;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UsuarioTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->seeInDatabase('clientes', ['id_cliente' => '']);
    }
}
