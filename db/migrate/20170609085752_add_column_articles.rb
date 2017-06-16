class AddColumnArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :user, index: true, foreign_key: true

    # 外部キーの削除はこちら（先に外部キー制約を削除してからカラムを削除する）
    remove_foreign_key :articles, :user
    remove_reference :articles, :user, index: true
  end
end
