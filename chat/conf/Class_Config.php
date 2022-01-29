<?php

# Date: 29.01.2022 (1:29)
class Config
{

    public static function db(): object
    {
        return (object)[
            'host' => '',
            'user' => '',
            'password' => '',
            'database' => '',
            'port' => '',
        ];
    }

    public static function define(): object
    {
        return (object)[
            'html' => './html/',
            'conf' => './conf/',
            'style' => './style/',
            'lib' => './lib/',
            'libjs' => './lib/js/',
            'linker' => './linker/',
        ];
    }

    public static function chatPassword(): string
    {
        return md5('36c07e47c3d7b0d2d48f2bc25d027f29');
    }
}