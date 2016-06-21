# encoding: utf-8
class CsvExportController < ApplicationController
  def index
    @applications_grid = initialize_grid(Application,
                                  order: 'students.last_name',
                                  name: 'g1',
                                  enable_export_to_csv: true,
                                  csv_field_separator: ';',
                                  csv_file_name: 'Applications'
    )


    export_grid_if_requested('g1' => 'applications_grid') do
      # usual render or redirect code executed if the request is not a CSV export request
    end
  end
end