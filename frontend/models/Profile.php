<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "profile".
 *
 * @property int $id
 * @property string $email
 * @property string $firstname
 * @property string $lastname
 * @property string $skype
 * @property string $mobilephone
 */
class Profile extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'profile';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['email'], 'string', 'max' => 100],
            [['firstname', 'lastname', 'skype', 'mobilephone'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'email' => 'E-mail',
            'firstname' => 'First name',
            'lastname' => 'Last name',
            'skype' => 'Skype',
            'mobilephone' => 'Mobile phone',
        ];
    }
}
