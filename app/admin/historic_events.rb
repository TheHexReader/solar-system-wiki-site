ActiveAdmin.register HistoricEvent do
  permit_params :name_en, :name_ru, :description_en, :description_ru, :astronomical_object_id, :date_start, :date_end

  config.filters = false

  show do
    attributes_table(:name_en, :name_ru, :description_en, :description_ru, :astronomical_object_id, :date_start, :date_end)

    panel I18n.t('active_admin.astronomical_objects.new_comments') do
      table_for resource.comments.order(created_at: :desc).first(10) do
        column(:author)
        column(:text)
        column(:created_at)
      end
    end
  end
end