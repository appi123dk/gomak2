class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :project_name     # 프로젝트명
	    t.string :brand_name       # 브랜드 명
	    t.string :video_url        # 영상 URL
	    t.string :thumb_url        # 썸네일 URL
      t.timestamps null: false
    end
  end
end
