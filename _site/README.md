#securetea-web Website for securetea.org

SecureTea-Web is the website for OWASP SecureTea Project which is an 
application designed to help secure a person's laptop or computer.


## Getting Started

In order to run it in your local machine clone this project into your system Install the
jekyll framework should be installed

### Prerequisites

In Ubuntu :

Install ruby, the ruby development libraries, and the make command.
```
sudo apt-get install ruby ruby-dev make gcc nodejs
```

Javascript Workaround

Installation of nodejs is required because of an issue where Jekyll requires a JavaScript runtime even if it will not be used.

Install Jekyll

Install the Jekyll gem system wide. For speed, we are excluding the extended documentation. To include all documentation, omit the --no-rdoc --no-ri switches.

```
sudo gem install jekyll --no-rdoc --no-ri

```

Check that Jekyll has been successfully installed.

```
jekyll -v

```

## Contributing

Please read [CONTRIBUTING.md]

###How to Use

Install jekyll

Initially clone the Project
Build the Project using command ``` jekyll b ```
Serve the Project using command ``` jekyll s ```

## Built With

* [Jekyll](https://jekyllrb.com/) - The web framework used


Credits:

	Icons:
		Font Awesome (fortawesome.github.com/Font-Awesome)

	Other:
		jQuery (jquery.com)
		html5shiv.js (@afarkas @jdalton @jon_neal @rem)
		background-size polyfill (github.com/louisremi)
		Misc. Sass functions (@HugoGiraudel)
		Respond.js (j.mp/respondjs)
		Skel (skel.io)