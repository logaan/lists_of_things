class Admin::LinksController < BackEndController
  active_scaffold :link do |config|
    config.columns = [:parent, :child]
    config.columns[:parent].form_ui = :select
    config.columns[:child].form_ui  = :select
  end
end
