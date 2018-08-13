<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Content */

$this->title = 'View '.$model->email;
$this->params['breadcrumbs'][] = ['label' => 'User Type', 'url' => ['usertype']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="view-user-type">
    <div class="body-content">

        <h1><?= Html::encode($this->title) ?></h1>

        <p>
            <?= Html::a('Update', ['updateut', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        </p>

        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'id',
                'email',
                'email_referral',
                'user_type',
            ],
        ]) ?>

    </div>
</div>
