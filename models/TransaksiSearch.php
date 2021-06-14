<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Transaksi;

/**
 * TransaksiSearch represents the model behind the search form of `app\models\Transaksi`.
 */
class TransaksiSearch extends Transaksi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kdtrans', 'tanggal'], 'safe'],
            [['kdbrg', 'idjenis', 'idsup', 'total'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Transaksi::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'kdbrg' => $this->kdbrg,
            'idjenis' => $this->idjenis,
            'idsup' => $this->idsup,
            'tanggal' => $this->tanggal,
            'total' => $this->total,
        ]);

        $query->andFilterWhere(['like', 'kdtrans', $this->kdtrans]);

        return $dataProvider;
    }
}
