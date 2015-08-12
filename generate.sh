#/bin/bash
#to generate only the controllers and views
bin/rails g pizza_controller workflow_status title:string --force
bin/rails g pizza_controller file_format title:string notes:text  --force
bin/rails g pizza_controller platform title:string notes:text --force
bin/rails g pizza_controller platform_version platform:references version:float notes:text --force
bin/rails g pizza_controller renderer title:string notes:text --force
bin/rails g pizza_controller renderer_version renderer:references version:float  notes:text  --force
bin/rails g pizza_controller browser_reader title:string notes:text --force
bin/rails g pizza_controller browser_reader_version browser_reader:references version:float notes:text  --force
bin/rails g pizza_controller assistive_technology title:string notes:text --force
bin/rails g pizza_controller assistive_technology_version assistive_technology:references version:float notes:text  --force
bin/rails g pizza_controller setup platform_version:references \
    renderer_version:references browser_reader_version:references \
    assistive_technology_version:references \
    file_format:references workflow_status:references notes:text --force
#content sources
bin/rails g pizza_controller content_source title:string notes:text --force
bin/rails g pizza_controller content_source_setup setup:references content_source:references --force
#component suggestion
bin/rails g pizza_controller browser_reader_renderer browser_reader:references renderer:references --force
bin/rails g pizza_controller browser_reader_file_format browser_reader:references file_format:references --force
bin/rails g pizza_controller platform_browser_reader platform:references browser_reader:references --force
bin/rails g pizza_controller platform_assistive_technology platform:references assistive_technology:references --force 
bin/rails g pizza_controller browser_reader_assistive_technology browser_reader:references assistive_technology:references --force 

#capability components
bin/rails g pizza_controller output title:string notes:text --force
bin/rails g pizza_controller verification_status title:string --force
bin/rails g pizza_controller feature title:string notes:text --force
bin/rails g pizza_controller affordance feature:references output:references --force
bin/rails g pizza_controller capability affordance:references setup:references verification_status:references --force

