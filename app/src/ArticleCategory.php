<?php

namespace SilverStripe\Lessons;

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;

class ArticleCategory extends DataObject {

    private static array $db = [
        'Title' => 'Varchar',
    ];

    private static array $has_one = [
        'ArticleHolder' => ArticleHolder::class,
    ];

    private static array $belongs_many_many = [
        'Articles' => ArticlePage::class,
    ];


    public function getCMSFields(): FieldList {
        return FieldList::create(
            TextField::create('Title')
        );
    }
}
