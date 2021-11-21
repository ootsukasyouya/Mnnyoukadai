require 'rails_helper'
describe 'タスク管理機能', type: :system do
  describe '新規作成機能' do
    context 'タスクを新規作成した場合' do
      it '作成したタスクが表示される' do
        FactoryBot.create(:task)
           visit new_task_path
      fill_in "Title", with: "リュック買う"
        fill_in "Content", with: "メルカリで見てみる"
        click_button 'Create Task'
        expect(page).to have_content 'リュック買う'
      end
    end
  end
end