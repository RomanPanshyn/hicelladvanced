<?php
namespace frontend\models;
use yii\base\Model;
use common\models\User;
/**
 * Signup form
 */
class SignupForm extends Model
{
    public $email;
    public $password;
    public $password_again;
    public $email_referral;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            ['email', 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This email address has already been taken.'],
            ['password', 'required'],
            ['password', 'string', 'min' => 6],
            ['password_again', 'required'],
            ['password_again', 'compare', 'compareAttribute' => 'password', 'message' => "Passwords don't match"],
            ['email_referral', 'trim'],
            ['email_referral', 'string', 'max' => 255],
        ];
    }
}
