<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "usertype".
 *
 * @property int $id
 * @property string $user_type
 */
class Usertype extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usertype';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_type'], 'required'],
            [['user_type'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_type' => 'User Type',
        ];
    }
}
