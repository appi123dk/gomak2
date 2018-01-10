class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :username        # 문의자 이름
      t.string :email           # 문의자 메일
      t.string :phone           # 문의자 핸드폰번호
      t.text :contents	        # 문의내용
      t.boolean :is_response, default: false    # 댑변여부
      t.timestamps null: false
    end
  end
end
