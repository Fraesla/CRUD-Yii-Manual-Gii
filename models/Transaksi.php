<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "transaksi".
 *
 * @property string $kdtrans
 * @property int $kdbrg
 * @property int $idjenis
 * @property int $idsup
 * @property string $tanggal
 * @property int $total
 *
 * @property Jenis $idjenis0
 * @property Supplier $idsup0
 * @property Barang $kdbrg0
 */
class Transaksi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transaksi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kdtrans', 'kdbrg', 'idjenis', 'idsup', 'tanggal', 'total'], 'required'],
            [['kdbrg', 'idjenis', 'idsup', 'total'], 'integer'],
            [['tanggal'], 'safe'],
            [['kdtrans'], 'string', 'max' => 5],
            [['kdtrans'], 'unique'],
            [['idjenis'], 'exist', 'skipOnError' => true, 'targetClass' => Jenis::className(), 'targetAttribute' => ['idjenis' => 'id']],
            [['idsup'], 'exist', 'skipOnError' => true, 'targetClass' => Supplier::className(), 'targetAttribute' => ['idsup' => 'id']],
            [['kdbrg'], 'exist', 'skipOnError' => true, 'targetClass' => Barang::className(), 'targetAttribute' => ['kdbrg' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'kdtrans' => 'Kdtrans',
            'kdbrg' => 'Kdbrg',
            'idjenis' => 'Idjenis',
            'idsup' => 'Idsup',
            'tanggal' => 'Tanggal',
            'total' => 'Total',
        ];
    }

    /**
     * Gets query for [[Idjenis0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdjenis0()
    {
        return $this->hasOne(Jenis::className(), ['id' => 'idjenis']);
    }

    /**
     * Gets query for [[Idsup0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdsup0()
    {
        return $this->hasOne(Supplier::className(), ['id' => 'idsup']);
    }

    /**
     * Gets query for [[Kdbrg0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKdbrg0()
    {
        return $this->hasOne(Barang::className(), ['id' => 'kdbrg']);
    }
}
