<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Profile ' . $model->email;
?>
<div class="site-profile">

    <div class="body-content">
        <h2>User <?= $model->email ?></h2>
        <h3>Edit Profile</h3>
        <?php $form = ActiveForm::begin(['id' => 'profile-form']); ?>

            <?= $form->field($model, 'firstname')->textInput() ?>

            <?= $form->field($model, 'lastname')->textInput() ?>

            <?= $form->field($model, 'skype')->textInput() ?>

            <?= $form->field($model, 'mobilephone')->textInput() ?>

            <div class="form-group">
                <?= Html::submitButton('Update', ['class' => 'btn btn-primary', 'name' => 'update-button']) ?>
            </div>

        <?php ActiveForm::end(); ?>

    </div>
</div>
