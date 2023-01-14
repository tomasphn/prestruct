# Prestruct: A Ruby gem that builds common project file structures for you

Prestruct is a minimalist CLI ruby gem that creates the basic file structures for different formats of ruby projects.Currently only supports Sinatra single file and mvc projects. 

*Mostly for expirementation and personal usage so the structuring is semi-opinionated.*

**Installation**
To install from the command line:
```
gem install prestruct
```
**Usage**
Once installed, Prestruct can be used anywhere from the command line. Navigate to the directory you plan to place your project in then:
```
prestruct [Project type (sinatra)] [structure (simple, mvc)] [-n project_name]
```
After your preferred project type, input your preferred file structure. You can also specify a title for your project with `-n` or `--name`. If unspecified, the project name will default to `new_project`. 

**Example Usage**
```
prestruct sinatra mvc -n word_analyzer  
# creates a mvc sinatra project with the name 'word_analyzer'

prestruct sinatra simple
# creates a single file sinatra project with default name 'project_name'
```

**Additional Options**
```
-v, --version       # shows the current version of Prestruct installed
-h, --help          # shows the argument structure that Prestruct accepts
-n, --name          # used alongside a project type to specify a project name
```