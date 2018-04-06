rails g model UserCategory name description:text
rails g devise USER name address phone
rails g scaffold house address stratum
rails g model membership user:references house:references user_category:references
rails g scaffold room name house:references
rails g scaffold node name description:text room:references
rails g model actuator node:references state:boolean comment:text
rails g model sensor_category name description:text
rails g model sensor name sensor_category:references
rails g model value value:float sensor:references
