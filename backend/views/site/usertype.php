<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\bootstrap\Dropdown;
use yii\grid\GridView;

$this->title = 'User Type';
?>
<div class="site-usertype">

    <div class="body-content">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                'id',
                'email',
                'email_referral',
                'user_type',
                ['class' => 'yii\grid\ActionColumn',
                'template' => '{viewut} {updateut}',
                'buttons' => [
                    'viewut' => function ($url,$model) {
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                            'title' => Yii::t('yii', 'View'),
                                    ]);
                    },
                    'updateut' => function ($url,$model) {
                            return Html::a('<span class="glyphicon glyphicon-pencil"></span>', $url, [
                                            'title' => Yii::t('yii', 'Update'),
                                    ]);
                    },
                    ],
            ],
            ],
        ]); ?>

    </div>
</div>
