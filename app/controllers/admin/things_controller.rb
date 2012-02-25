class Admin::ThingsController < BackEndController
  active_scaffold :thing do |config|
    config.columns = [:name, :body, :parents, :children]

    config.list.columns.exclude [:body]

    config.create.columns.exclude [:parents, :children]
    config.update.columns.exclude [:parents, :children]
  end
end
