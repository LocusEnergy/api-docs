Running the Locus Energy API Documentation Locally
==================================================

The Locus API documentation is written using Slate.  These instructions get you setup and running with the documentation on your local machine.

Note: Instructions are for setup on Linux.  Differences are noted for OS X users; however, see the **General Slate Documentation** below for additional OS X information.

### Setup
1. `git clone https://github.com/LocusEnergy/api-docs.git` to clone your repository locally
2. `sudo apt-get install bundler` (OS X users: install Ruby from [Installing Ruby](https://www.ruby-lang.org/en/documentation/installation) and then run `gem install bundler`)
3. `bundle install`

### Run
1. Change into the `api-docs` directory
2. `bundle exec middleman server`
3. In your browser navigate to [http://localhost:4567](http://localhost:4567)