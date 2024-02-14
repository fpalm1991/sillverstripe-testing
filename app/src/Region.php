<?php

namespace SilverStripe\Lessons;

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Versioned\Versioned;

class Region extends DataObject
{

    private static bool $versioned_gridfield_extensions = true;

    private static array $db = [
        'Title' => 'Varchar',
        'Description' => 'Text',
    ];

    private static array $summary_fields = [
        'Photo.Filename' => 'Photo file name',
        'Title' => 'Title',
        'Description' => 'Description'
    ];

    public function getGridThumbnail() {
        if($this->Photo()->exists()) {
            return $this->Photo()->ScaleWidth(100);
        }

        return "(no image)";
    }

    private static array $has_one = [
        'Photo' => Image::class,
        'RegionsPage' => RegionsPage::class
    ];

    private static array $owns = [
        'Photo',
    ];

    private static array $extensions = [
        Versioned::class,
    ];

    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextareaField::create('Description'),
            $uploader = UploadField::create('Photo')
        );

        $uploader->setFolderName('region-photos');
        $uploader->getValidator()->setAllowedExtensions(['png','gif','jpeg','jpg']);

        return $fields;
    }
}
