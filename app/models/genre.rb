class Genre < ActiveHash::Base
  # GenreモデルにActiveHash::Baseを継承しました。
  # Genreモデルに定義したオブジェクト（ジャンルのデータ）に対してActiveRecordのようなメソッドが使用できるようになります。
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '経済' },
    { id: 3, name: '政治' },
    { id: 4, name: '地域' },
    { id: 5, name: '国際' },
    { id: 6, name: 'IT' },
    { id: 7, name: 'エンタメ' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: 'グルメ' },
    { id: 10, name: 'その他' }
  ]
# idは数字じゃないと読み込めない
# nameはプルダウンのところで使われている
# こことDBのnameやIDが一致していないと　NoMethodError in Articles#index　となる
 
   include ActiveHash::Associations
   has_many :articles
  #  本当のデータベースとのアソシエーションを示している
  # 今回の場合は一つのカテゴリーは複数の記事にまたがっている為has_manyとなる
 
  end

  # 簡易データベースのようなもの、ここの情報は随時更新されない