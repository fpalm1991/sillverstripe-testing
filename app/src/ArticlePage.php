<?php

namespace SilverStripe\Lessons;

use Page;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\CheckboxSetField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;

class ArticlePage extends Page {

    private static $can_be_root = false;
    private static $db = [
        'Date' => 'Date',
        'Teaser' => 'Text',
        'Reporter' => 'Varchar',
    ];

    private static array $has_one = [
        'Photo' => Image::class,
        'Brochure' => File::class,
    ];

    private static array $many_many = [
        'Categories' => ArticleCategory::class,
    ];

    // With ownership uploaded files get published immediately
    private static array $owns = [
        'Photo',
        'Brochure'
    ];

    public function CategoriesList() {
        if($this->Categories()->exists()) {
            return implode(', ', $this->Categories()->column('Title'));
        }

        return null;
    }

    public function getCMSFields(): FieldList {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of article'), 'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('Teaser')->setDescription('This is the summary that appears on the article list page.'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Reporter', 'Author'), 'Content');

        $fields->addFieldToTab('Root.Attachments', UploadField::create('Photo'));
        $fields->addFieldToTab('Root.Attachments', $brochure = UploadField::create(
            'Brochure',
            'Travel brochure, optional (PDF only)'
        ));

        $brochure
            ->setFolderName('travel-brochures')
            ->getValidator()->setAllowedExtensions(array('pdf'));

        $fields->addFieldToTab('Root.Categories', CheckboxSetField::create(
            'Categories',
            'Selected categories',
            $this->Parent()->Categories()->map('ID','Title')
        ));

        return $fields;
    }

}
