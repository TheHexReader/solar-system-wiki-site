ActiveAdmin.register AstronomicalObject do

  permit_params :slug, :name_en, :name_ru, :description_en, :description_ru, :characteristic

  config.filters = false

  show do
    attributes_table(:slug, :name_en, :name_ru, :description_en, :description_ru, :characteristic)

    panel I18n.t('active_admin.astronomical_objects.new_comments') do
      table_for resource.comments.order(created_at: :desc).first(10) do
        column(:author)
        column(:text)
        column(:created_at)
      end
    end
  end
end