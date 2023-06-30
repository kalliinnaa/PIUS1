{
    "_readme": [
        "This file locks the dependencies of your project to a known state",
        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#installing-dependencies",
        "This file is @generated automatically"
    ],
    "content-hash": "cb748b341a533af22dd0df314b5ab2da",
    "packages": [
        {
            "name": "symfony/deprecation-contracts",
            "version": "v3.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/deprecation-contracts.git",
                "reference": "e2d1534420bd723d0ef5aec58a22c5fe60ce6f5e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/deprecation-contracts/zipball/e2d1534420bd723d0ef5aec58a22c5fe60ce6f5e",
                "reference": "e2d1534420bd723d0ef5aec58a22c5fe60ce6f5e",
                "shasum": ""
            },
            "require": {
                "php": ">=8.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "3.3-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "files": [
                    "function.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "A generic function and convention to trigger deprecation notices",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/deprecation-contracts/tree/v3.2.1"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-03-01T10:25:55+00:00"
        },
        {
            "name": "symfony/polyfill-ctype",
            "version": "v1.27.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-ctype.git",
                "reference": "5bbc823adecdae860bb64756d639ecfec17b050a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-ctype/zipball/5bbc823adecdae860bb64756d639ecfec17b050a",
                "reference": "5bbc823adecdae860bb64756d639ecfec17b050a",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "provide": {
                "ext-ctype": "*"
            },
            "suggest": {
                "ext-ctype": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.27-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Ctype\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Gert de Pagter",
                    "email": "BackEndTea@gmail.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for ctype functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "ctype",
                "polyfill",
                "portable"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-ctype/tree/v1.27.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-11-03T14:55:06+00:00"
        },
        {
            "name": "symfony/polyfill-mbstring",
            "version": "v1.27.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-mbstring.git",
                "reference": "8ad114f6b39e2c98a8b0e3bd907732c207c2b534"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/8ad114f6b39e2c98a8b0e3bd907732c207c2b534",
                "reference": "8ad114f6b39e2c98a8b0e3bd907732c207c2b534",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "provide": {
                "ext-mbstring": "*"
            },
            "suggest": {
                "ext-mbstring": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.27-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Mbstring\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for the Mbstring extension",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "mbstring",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-mbstring/tree/v1.27.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-11-03T14:55:06+00:00"
        },
        {
            "name": "symfony/translation-contracts",
            "version": "v3.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/translation-contracts.git",
                "reference": "dfec258b9dd17a6b24420d464c43bffe347441c8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/translation-contracts/zipball/dfec258b9dd17a6b24420d464c43bffe347441c8",
                "reference": "dfec258b9dd17a6b24420d464c43bffe347441c8",
                "shasum": ""
            },
            "require": {
                "php": ">=8.1"
            },
            "suggest": {
                "symfony/translation-implementation": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "3.3-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Contracts\\Translation\\": ""
                },
                "exclude-from-classmap": [
                    "/Test/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Generic abstractions related to translation",
            "homepage": "https://symfony.com",
            "keywords": [
                "abstractions",
                "contracts",
                "decoupling",
                "interfaces",
                "interoperability",
                "standards"
            ],
            "support": {
                "source": "https://github.com/symfony/translation-contracts/tree/v3.2.1"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-03-01T10:32:47+00:00"
        },
        {
            "name": "symfony/validator",
            "version": "v6.2.7",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/validator.git",
                "reference": "4b3bd0a9545bdf7ebc84f0a494c05219010bb403"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/validator/zipball/4b3bd0a9545bdf7ebc84f0a494c05219010bb403",
                "reference": "4b3bd0a9545bdf7ebc84f0a494c05219010bb403",
                "shasum": ""
            },
            "require": {
                "php": ">=8.1",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/translation-contracts": "^1.1|^2|^3"
            },
            "conflict": {
                "doctrine/annotations": "<1.13",
                "doctrine/lexer": "<1.1",
                "phpunit/phpunit": "<5.4.3",
                "symfony/dependency-injection": "<5.4",
                "symfony/expression-language": "<5.4",
                "symfony/http-kernel": "<5.4",
                "symfony/intl": "<5.4",
                "symfony/property-info": "<5.4",
                "symfony/translation": "<5.4",
                "symfony/yaml": "<5.4"
            },
            "require-dev": {
                "doctrine/annotations": "^1.13|^2",
                "egulias/email-validator": "^2.1.10|^3|^4",
                "symfony/cache": "^5.4|^6.0",
                "symfony/config": "^5.4|^6.0",
                "symfony/console": "^5.4|^6.0",
                "symfony/dependency-injection": "^5.4|^6.0",
                "symfony/expression-language": "^5.4|^6.0",
                "symfony/finder": "^5.4|^6.0",
                "symfony/http-client": "^5.4|^6.0",
                "symfony/http-foundation": "^5.4|^6.0",
                "symfony/http-kernel": "^5.4|^6.0",
                "symfony/intl": "^5.4|^6.0",
                "symfony/mime": "^5.4|^6.0",
                "symfony/property-access": "^5.4|^6.0",
                "symfony/property-info": "^5.4|^6.0",
                "symfony/translation": "^5.4|^6.0",
                "symfony/yaml": "^5.4|^6.0"
            },
            "suggest": {
                "egulias/email-validator": "Strict (RFC compliant) email validation",
                "psr/cache-implementation": "For using the mapping cache.",
                "symfony/config": "",
                "symfony/expression-language": "For using the Expression validator and the ExpressionLanguageSyntax constraints",
                "symfony/http-foundation": "",
                "symfony/intl": "",
                "symfony/property-access": "For accessing properties within comparison constraints",
                "symfony/property-info": "To automatically add NotNull and Type constraints",
                "symfony/translation": "For translating validation errors.",
                "symfony/yaml": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Validator\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides tools to validate values",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/validator/tree/v6.2.7"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-02-24T10:42:00+00:00"
        }
    ],
    "packages-dev": [],
    "aliases": [],
    "minimum-stability": "stable",
    "stability-flags": [],
    "prefer-stable": false,
    "prefer-lowest": false,
    "platform": [],
    "platform-dev": [],
    "plugin-api-version": "2.1.0"
}
