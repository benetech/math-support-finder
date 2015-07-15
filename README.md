#MathSupportMatrix

The MathSupportMatrix (MSM) is a discovery and reference tool for pairing math content sources with accessible configurations.

##About

The tool allows users to search for a combination of assistive technology, browser/readers, formats, and other attributes of their computing environment so as to discover how best to consume digital mathematics accessibly with said combination. 

We will seek to incorporate community feedback to identify more sources and configurations as well as their respective benefits and issues. 

The site streamlines the process of adding new configurations, versions of renderers, browsers/readers, platforms, and assistive technologies. 

Users will eventually contribute content sources that work well with one or more configurations. Benetech staff, for now, will be responsible for approving submitted configurations by testing them manually and then changing their status to an approved state that will allow these configurations to be live on the website. User ratings and comments about configurations could follow as well.

MSM is built with Ruby on Rails, CoffeeScript, and SASS.

##Setup

This command will clone the repository into a directory called math-support-matrix. This will be the directory we will be working in.

    git clone http://github.com/benetech/math-support-matrix

We use Vagrant. [Download and install Vagrant](http://www.vagrantup.com/downloads.html)

Vagrant uses VirtualBox.  [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)

You may need to make sure that VirtualBox's installation directory is in your path.


###Spin Up the Environment

Run the command ```vagrant up``` in the math-support-matrix directory. This will take a while to download the Linux distro, image it, install ruby/rails/other software. etc. Once it's done, you can login with ```vagrant ssh```. 

If you want to use other tools for ssh, just ssh to port 2222 on your local machine, and that's where ssh is listening to take you to the VirtualBox instance. The username and password are both ```vagrant ```.

Once you're in the VirtualBox, then issue the following commands.

    cd /vagrant
    rake db:drop db:create db:migrate db:seed
    rake db:drop db:create db:migrate db:seed RAILS_ENV=test

##Running

To run the server, do:

    vagrant ssh #if you have not already
    rails server

Once you do that, you can go to [http://localhost:3000/](http://localhost:3000/) and you should see the application's homepage.

Also, you may need to issue this in a separate terminal on your local box if the port forwarding for port 3000 on VirtualBox isn't setup:

    ssh -N -L 3000:localhost:3000 vagrant@localhost -p 2222

Again, the password is "vagrant" without the quotes.

Happy Hacking.

##Data model
To generate the data model diagram, you can do:

    railroady -o models.dot -M
    dot -Tpng models.dot > models.png

Here's a representation of it for [nomnoml](http://nomnoml.com)

    [<frame>Math Support Matrix data model|
      [User | id: int | email: string | admin: bool | timestamps]

      [Configuration | id: int | title: str | notes: text | status_id: reference | format_id: reference | 
        platform_version_id: reference | browser_reader_version_id :  reference | assistive_technology_version_id : reference |
         renderer_version_id : reference  | affordance_id: reference | timestamps]
     
      [WorkflowStatus | id: int | title: str ]
      [WorkflowStatus] <- [Configuration]

      [ContentSource | id: int | title: string | notes: text | timestamps]
      [ContentSourceConfigurations ] -> [Configuration]
      [ContentSourceConfigurations ] -> [ContentSource]

      [Format | id: int | title: string | notes: text | timestamps]
      [Configuration] -> [Format]

      [Platform | id: int | title: str | notes: text | timestamps]
      [PlatformVersion | id: int | version: float | notes: text | timestamps]
      [Platform] <- [PlatformVersion]
      [Configuration] -> [PlatformVersion]


      [Renderer | id: int | title: str | notes: text | timestamps]
      [RendererVersion | id: int | version: float | notes: text | timestamps]
      [Renderer] <- [RendererVersion]
      [Configuration] -> [RendererVersion]

      [BrowserReader | id: int | title: str | notes: text | timestamps]
      [BrowserReaderVersion | id: int | version: float | notes: text | timestamps]
      [BrowserReader] <- [BrowserReaderVersion]
      [Configuration] -> [BrowserReaderVersion]

      [AssistiveTechnology | id: int | title: str | notes: text | timestamps]
      [AssistiveTechnologyVersion | id: int | title: str | notes: text | timestamps]
      [AssistiveTechnology] <- [AssistiveTechnologyVersion]
      [Configuration] -> [AssistiveTechnologyVersion]

      [BrowserReaderRenderer] -> [Renderer]
      [BrowserReaderRenderer] -> [BrowserReader]

      [BrowserReaderFormat] -> [Format]
      [BrowserReaderFormat] -> [BrowserReader]

      [PlatformBrowserReader] -> [Platform]
      [PlatformBrowserReader] -> [BrowserReader]

      [PlatformAssistiveTechnology] -> [AssistiveTechnology]
      [PlatformAssistiveTechnology] -> [Platform]

      [Affordance | id: int | title: str | notes: text |timestamps]
      [VerificationStatus | id: int | title: str ]
      [Feature | id: int | title: str | notes: text | timestamps]
      [Capability | id: int | feature_id:reference | affordance_id: reference | configuration_id: reference | verification_status_id: ref | timestamps]

      [Capability] -> [VerificationStatus]
      [Capability] -> [Configuration]
      [Capability] -> [Affordance]
      [Capability] -> [Feature]

    ]

## Scaffolds

First, we initialized our generators and our user login system:

    rails g devise:install
    rails g devise user 
    rails g devise:views users
    #https://github.com/plataformatec/devise
    rake acts_as_taggable_on_engine:install:migrations
    #https://github.com/mbleigh/acts-as-taggable-on

Then we generated our scaffolds:

    #configuration components
    rails g pizza_scaffold workflow_status title:string --force
    rails g pizza_scaffold format title:string notes: text  --force
    rails g pizza_scaffold platform title:string notes:text --force
    rails g pizza_scaffold platform_version platform:references version:float notes:text --force
    rails g pizza_scaffold renderer title:str notes:text --force
    rails g pizza_scaffold renderer_version render:references version:float  notes:text  --force
    rails g pizza_scaffold browser_reader title:string notes:text --force
    rails g pizza_scaffold browser_reader_version browser_reader:references version:float notes:text  --force
    rails g pizza_scaffold assistive_technology title:string notes:text --force
    rails g pizza_scaffold assistive_technology_version assistive_technology:references version:float notes:text 
    rails g pizza_scaffold configuration platform_version:references \
        renderer_version:references browser_reader_version:references \
        assistive_technology_version:references platform_version:references \
        format:references workflow_status:references --force
    #content sources
    rails g pizza_scaffold content_source title:string notes:text --force
    rails g pizza_scaffold content_source_configuration configuration:references content_source:references--force
    #component suggestion
    rails g pizza_scaffold browser_reader_renderer browser_reader:references renderer:references --force
    rails g pizza_scaffold browser_reader_format browser_reader:references format:references --force
    rails g pizza_scaffold platform_browser_reader platform:references browser_reader:references --force
    rails g pizza_scaffold platform_assistive_technology platform:references assistive_technologies:references --force
    #capability components
    rails g pizza_scaffold affordance title:string notes:text --force
    rails g pizza_scaffold verification_status title:string --force
    rails g pizza_scaffold feature title:string notes:text --force
    rails g pizza_scaffold capability feature:references affordance:references configuration:references verification_status:references --force

##Components
- [RubyOnRails](http://rubyonrails.org/)
- [accecess](http://lukyvj.github.io/accecss/)
- [MariaDB](https://mariadb.org/) 
- [rbenv](http://rbenv.org/) with [plugins](https://github.com/sstephenson/rbenv/wiki/Plugins) for gems, bundler, build, and binstubs
- [bundler](http://bundler.io/)
- [SASS](http://sass-lang.com/)
- [Coffeescript](http://coffeescript.org/)

##Links
- [benetech/math-support-matrix repo](http://github.com/benetech/math-support-matrix)
- [Benetech](http://benetech.org)
- [A11Y Guidelines](http://a11yproject.com/)
- [Tenon](http://tenon.io) for accessibility debugging and [Tenon Check](https://chrome.google.com/webstore/detail/tenon-check/bmibjbhkgepmnehjfhjaalkikngikhgj?hl=en-US) in Chrome
- [aXe](https://github.com/dequelabs/axe-core)
- [Sina's Links on Accessibility](http://www.sinabahram.com/resources.php)
- [ARIA in HTML](http://rawgit.com/w3c/aria-in-html/master/index.html) and [ARIA](http://www.w3.org/TR/wai-aria/states_and_properties#global_states)

##Contributors
- [@SinaBahram](https://twitter.com/SinaBahram)
- [@seereadnow](https://twitter.com/seereadnow)
