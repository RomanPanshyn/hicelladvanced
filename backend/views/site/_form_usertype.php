<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\bootstrap\Dropdown;

/* @var $this yii\web\View */
/* @var $model app\models\Content */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="book-form-user-type">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput(['readonly' => 'true']) ?>

    <?= $form->field($model, 'email')->textInput() ?>

    <?= $form->field($model, 'email_referral')->textInput() ?>

    <?= $form->field($model, 'user_type')->dropdownList(ArrayHelper::map($usertype, 'user_type', 'user_type')) ?>    

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
