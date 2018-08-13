<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Content */

$this->title = 'Update ' . $model->email;
$this->params['breadcrumbs'][] = ['label' => 'User Type', 'url' => ['usertype']];
$this->params['breadcrumbs'][] = ['label' => 'View '.$model->email, 'url' => ['viewut', 'id' => $model->id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="update-user-type">
    <div class="body-content">

        <h1><?= Html::encode($this->title) ?></h1>

        <?= $this->render('_form_usertype', [
            'model' => $model,
            'usertype' => $usertype,
        ]) ?>

    </div>
</div>
