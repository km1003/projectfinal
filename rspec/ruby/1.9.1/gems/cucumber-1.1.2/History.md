## [v1.1.2](https://github.com/cucumber/cucumber/compare/v1.1.1...v1.1.2)

### Changed features

* Break long lines in output. Only needed for better output formatting in the Cucumber Book! (Aslak Hellesøy)

### Changed features

* Deprecated i18n methods in World, and added a new #step method to use instead. ([#68](https://github.com/cucumber/cucumber/issues/68) Matt Wynne)
* The JSON formatter output has changed slightly. Old format:

    {
      features: [feature here]
    }

New format:

    [feature here]
 
Also see [Gherkin 2.6.0 History](https://github.com/cucumber/gherkin/blob/master/History.md) for info about new `id` and `uri` elements in the JSON.

## [v1.1.0](https://github.com/cucumber/cucumber/compare/v1.0.6...v1.1.0)

### Changed features
* The JSON formatter output has changed. See [Gherkin 2.5.0 History](https://github.com/cucumber/gherkin/blob/master/History.md) (Aslak Hellesøy)

## [v1.0.6](https://github.com/cucumber/cucumber/compare/v1.0.5...v1.0.6)

### Bugfixes
* Work around rubygems/yaml utter retardedness ([#136](https://github.com/cucumber/cucumber/issues/136) Aslak Hellesøy)

## [v1.0.5](https://github.com/cucumber/cucumber/compare/v1.0.4...v1.0.5)

### Bugfixes

* Gemspec corrupted in 1.0.4 (I had to upgrade my rubygems to 1.8.10 to fix it). ([#136](https://github.com/cucumber/cucumber/issues/136) Aslak Hellesøy)

## [v1.0.4](https://github.com/cucumber/cucumber/compare/v1.0.3...v1.0.4)

### Bugfixes

* Guard against the require succeeding, but not properly loading a module. ([#93](https://github.com/cucumber/cucumber/pull/93) Christopher Meiklejohn)
* Cmdline arguments parsing error if --drb is enabled. ([#117](https://github.com/cucumber/cucumber/issues/117) Roman Chernyatchik)
* Replace capturing groups with non-capturing in RbTransform#to_s ([#106](https://github.com/cucumber/cucumber/pull/106) Thomas Walpole)
* Patched unmatched message in HTML formatter. (Nikita)
* Overriding a method that causes a NoMethodError when a Before hook is called on a feature run that has no scenarios. (ccthiel)

## [v1.0.3](https://github.com/cucumber/cucumber/compare/v1.0.2...v1.0.3)

### Bugfixes
* Do not escape the replaced entity ([#126](https://github.com/cucumber/cucumber/pull/126) Jonathan Tron)

### New Features
* DocStrings now have a content_type ([#132](https://github.com/cucumber/cucumber/issues/132) Matt Wynne)

## [v1.0.2](https://github.com/cucumber/cucumber/compare/v1.0.1...v1.0.2)

### Bugfixes
* Cucumber 1.0.1 breaks cuke4duke ([#104](https://github.com/cucumber/cucumber/issues/104) Aslak Hellesøy)

### New Features
* Better line truncation if $CUCUMBER_TRUNCATE_OUTPUT has a max line length value. (Aslak Hellesøy)

### Changes Features
* --no-source also excludes location from the summary. (Aslak Hellesøy)

## [v1.0.1](https://github.com/cucumber/cucumber/compare/v1.0.0...v1.0.1)

### Bugfixes
* Removed extra colons emitted by rerun formatter ([#99](https://github.com/cucumber/cucumber/pull/99) Juan Manuel Barreneche)
* cucumber 1.0.0 wrong number of arguments error when generating json format on jruby for windows ([#97](https://github.com/cucumber/cucumber/issues/97) (Aslak Hellesøy)
* Recent change to junit.rb breaks on Windows ([#81](https://github.com/cucumber/cucumber/issues/81), [#86](https://github.com/cucumber/cucumber/pull/86) Johnlon, Aslak Hellesøy)
* Cucumber fails on nil and does not print out failed tests ([#95](https://github.com/cucumber/cucumber/pull/95) Nikita)
* Javascript code is not being displayed in HTML output ([#58](https://github.com/cucumber/cucumber/issues/58) Aslak Hellesøy)

### New Features
* If the CUCUMBER_TRUNCATE_OUTPUT environment variable is set, lines will be truncated. Used by the Cucumber book. (Aslak Hellesøy)

## [v1.0.0](https://github.com/cucumber/cucumber/compare/v0.10.6...v1.0.0)

Yipeeeeeeeee!

### New Features
* Use Rake 1.9.2 for development (Aslak Hellesøy)
* Rake task exits with an error if rcov is true and we're on Ruby 1.9.x (Aslak Hellesøy)
* Started implementation of cucumber-features (Mike Sassak, Julien Biezemans, Aslak Hellesøy)

## [v0.10.6](https://github.com/cucumber/cucumber/compare/v0.10.5...v0.10.6)

### New Features
* API docs at http://cukes.info/cucumber/api/ruby/latest/

### Bugfixes
* Fixed a regression in the HTML formatter's #embed implementation (#77 Aslak Hellesøy)

## [v0.10.5](https://github.com/cucumber/cucumber/compare/v0.10.3...v0.10.5)

(0.10.4 was forgotten!)

### Changed features
* The announce method is deprecated. Use puts instead (#67 Aslak Hellesøy)
* The announce_world method is gone. Use puts(self) instead (#67 Aslak Hellesøy)

### New Features
* Better JUnit formatter support for sub directories and scenario outlines (#59, #61, #62 Matt Simpson, Kenny Ortmann)

### Bugfixes
* Fix for Gem.available? deprecation warning (#75 Jake Benilov)
* Update URLs to reflect Cucumber's new location on Github (Jake Benilov)

## [v0.10.3](https://github.com/cucumber/cucumber/compare/v0.10.2...v0.10.3)

### New Features
* Better JUnit formatter support for sub directories and scenario outlines (#59 Matt Simpson)
* Coloured output that spans several lines sets colours for each line. (Aslak Hellesøy)
* New bundler attribute on the Rake task, allowing faster execution. (Aslak Hellesøy)
* Fix Table#rows cell ordering in ruby 1.8. (#47_github Brian Dunn)
* JUnit Formatter: record skipped/pending/undefined scenario results (#655 meeee)

## [v0.10.2](https://github.com/cucumber/cucumber/compare/v0.10.1...v0.10.2)

### Bugfixes
* Neuter both MiniTest::Unit and Test::Unit's overzealous test runners. (Aslak Hellesøy)

## [v0.10.1](https://github.com/cucumber/cucumber/compare/v0.10.0...v0.10.1)

### New Features
* The #embed method can take a 3rd optional label argument. In the HTML report that's used for the link title. (Pat Leamon)
* Render .wire files through ERB (Kevin Olbrich)
* Happy coexistence with Rake 0.9 (Cezary Baginski)
* Add -l, --lines option just like rspec's (Gabriel Horner)
* Support for named transforms. See features/transforms.feature (Matt Wynne)
* Experimental support for non-UTF-8 encoding in feature files. A "# encoding=iso-8859-1" header (or any other encoding)
  in the file will read the file in with that encoding and convert it to UTF-8 before it's parsed with gherkin.
  Step definition arguments will be passed in UTF-8 encoded strings regardless of the encoding in the feature file.
* Better error message if there is no features directory (David Lindes)
* Include scenario file reference in html formatter output (Brandon Faloona)
* Relax gem dependencies to use >= instead of ~> (Rob Slifka, Aslak Hellesøy)

### Bugfixes
* Missing methods in Runtime::ForProgrammingLanguages - make v8 example run again (Chris Mytton)
* Features files are sorted before they are executed, giving consistent results across different OSes (Guewen Baconnier)
* Remove duplicate lines in backtraces in the HTML report (Jari Bakken) 

## [v0.10.0](https://github.com/cucumber/cucumber/compare/v0.9.4...v0.10.0)

We're bumping the minor number in this release because there are some incompatible changes in the JSON support.
This should not affect users. The major new feature in this release is ANSICON support for Windows users.

### New Features
* map_column! should allow a string or symbol as the column name passed in (Ed Schmalzle)
* Deprecate win32console and use ANSICON instead (Boško Ivanišević)
* Set builder dependency to >= 2.1.2, which will work with both Rails 2 and 3. (bUg., David Trasbo, Matt Wynne)

### Bugfixes
* Changed the HTML formatter to show Scenarios with 'Pending' steps to be yellow rather than green (Arti)

### Changed Features
* JSON output now contains optional "match", "result" and "embeddings" elements underneath each step. (Aslak Hellesøy)

## [v0.9.4](https://github.com/cucumber/cucumber/compare/v0.9.3...v0.9.4)

### Bugfixes
* Superfluous space after step_keyword value in snippet_text message (#679 Aslak Hellesøy)
* Better Handling for "puts" in HTML formatter (#676 Stephen Kennedy)
* Too many open files - getcwd (#666 Aslak Hellesøy)
* Cucumber 0.9.3 prevents Test::Unit from running (#677 Aslak Hellesøy)
* Performance degradation when running feature files with over 1000 steps (#675 Dimitri Geshef)

## [v0.9.3](https://github.com/cucumber/cucumber/compare/v0.9.2...v0.9.3)

### Bugfixes
* Better JSON representation of Regexps (Aslak Hellesøy)
* Update to work with latest spork (Matt Wynne)
* Prevent MiniTest::Unit#autorun from running in at_exit hook. (Aslak Hellesøy) 
* Fixed incorect --help for --strict. It fails on both pending and undefined. (Aslak Hellesøy)

## [v0.9.2](https://github.com/cucumber/cucumber/compare/v0.9.1...v0.9.2)

### Bugfixes
* Too many open files - getcwd (#666 Aslak Hellesøy)

## [v0.9.1](https://github.com/cucumber/cucumber/compare/v0.9.0...v0.9.1)

### Bugfixes
* Just a minor internal change to make Cuke4Duke happy. (Aslak Hellesøy)

## [v0.9.0](https://github.com/cucumber/cucumber/compare/v0.8.5...v0.9.0)

Maintenance release for the new release of Gherkin 2.2.3.

### Bugfixes
* Compatibility with rspec-2.0.0.beta.19 mocks (Aslak Hellesøy)
* JUnit formatter now puts output in CDATA sections. (Dmitry Amelchenko)

### New features
* --dry-run now shows snippets (Ben Hall)
* Use Bundler for dependency management. (Aslak Hellesøy, Rob Hunter)

### Removed features
* No more Jeweler

### Internal changes
* Big refactoring of StepMother (Matt Wynne)

## [v0.8.5](https://github.com/cucumber/cucumber/compare/v0.8.4...v0.8.5)

### Bugfixes
* Location of stepdefs outside the project (in gems) are reported incorrectly. (#583 Aslak Hellesøy)
* Cucumber::Rake::Task uses 'bundle exec' when using bundler (#626 John Firebaugh)

## [v0.8.4](https://github.com/cucumber/cucumber/compare/v0.8.3...v0.8.4)

### Bugfixes
* Fix "Errno::EADDRNOTAVAIL" errors that may be received with spork on Snow Leopard. (Lucas Mundim)

### New features
* Detect limit for negative tags (#636 Aslak Hellesøy)
* Support for RSpec 2 doubles (mocks and stubs) (Aslak Hellesøy)

## [v0.8.3](https://github.com/cucumber/cucumber/compare/v0.8.2...v0.8.3)

Just a quick bugfix release.

### Bugfixes
* Scenario outlines that fail with exception exit process (Aslak Hellesøy)

## [v0.8.2](https://github.com/cucumber/cucumber/compare/v0.8.1...v0.8.2)

Bugfix release which most importantly fixes an issue with the gem's gemspec.

### Bufixes
* Fix v8 support which broke in 0.8.1 because of new gherkin API (Aslak Hellesøy)
* Call Around hooks for each example in scenario outlines. (John Firebaugh)
* Remove extraneous tmp file from the gemspec, which broke installation in some environments. (Fernando Brito, Aslak Hellesøy)
* 0.8.1 fails on JRuby (#627 Aslak Hellesøy)

### New Features
* JavaScript to Hide/Expand Scenarios in HTML report (#621 stkenned)

## [v0.8.1](https://github.com/cucumber/cucumber/compare/v0.8.0...v0.8.1)

### Bufixes
* generate test report fails: ast/outline_table.rb fails in status() (#615 Aslak Hellesøy)

### New Features
* Undefined steps with integers (Given 3 cukes) will generate snippets like (Given /(\d+) cukes/). (Aslak Hellesøy)

## [v0.8.0](https://github.com/cucumber/cucumber/compare/v0.7.3...v0.8.0)

### Bugfixes
* Require profile option causes a NoMethodError for Cucumber with JRuby (#601 John Firebaugh)
* Deprecations warnings with Spork + Cucumber + RSpec 2.0. (#619 Brian Cardarella)
* Fixed edge case compatibility problem with Gherkin 1.0.30. (#618 Aslak Hellesøy)

### New features
* Better table support in the V8 Javascript support (Joseph Wilk)
* JSON formatters (json and json_pretty). (Jari Bakken)

### Removed features
* The --no-diff option is removed. If you're using RSpec you will *always* get diffs. (Aslak Hellesøy)

### Changed Features
* Upgraded to be compatible with rspec 2.0.0.beta.10 (Aslak Hellesøy)
* Ruby snippets will use "([^"]*)" instead of "([^\"]*)"$/ - wasn't properly fixed in 0.7.1. (Aslak Hellesøy)
* Preserve the order features files are passed and use this for execution order (#617 Joseph Wilk)

## [v0.7.3](https://github.com/cucumber/cucumber/compare/v0.7.2...v0.7.3)

### New Features
* Table cells can now contain escaped bars - \| and escaped backslashes - \\. (Gregory Hnatiuk, Aslak Hellesøy)
* Added support for Around hooks. (#605 John Firebaugh)

## [v0.7.2](https://github.com/cucumber/cucumber/compare/v0.7.1...v0.7.2)

### Bugfixes
* REALLY add backwards compatibility fix (with deprecation warning) for legacy 0.6.4 formatters. (Aslak Hellesøy)

## [v0.7.1](https://github.com/cucumber/cucumber/compare/v0.7.0...v0.7.1)

### Bugfixes
* Add backwards compatibility fix (with deprecation warning) for legacy 0.6.4 formatters. (Aslak Hellesøy)

### Changed Features
* Ruby and Javascript snippets will use "([^"]*)" instead of "([^\"]*)"$/ (Aslak Hellesøy)

## [v0.7.0](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.8...v0.7.0)

This release is an important milestone for Cucumber. A new parser (the gherkin gem) parses feature
files 50-100 times faster than with 0.6.x and previous releases. Make sure you read the upgrade
instructions! http://wiki.github.com/aslakhellesoy/cucumber/upgrading

## [v0.7.0.beta.8](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.7...v0.7.0.beta.8)

### Bugfixes
* Inconsistent order of execution Background and Before in 0.7.0.beta.2 (#600 Mike Sassak)
* Make sure both lexing and parsing errors are captured and reported with line number (Gregory Hnatiuk)

## [v0.7.0.beta.7](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.6...v0.7.0.beta.7)

### Bugfixes
* Depend on gherkin-1.0.22, which should now make things work on Windows and Ruby 1.8.x-1.9.x. (Aslak Hellesøy)

## [v0.7.0.beta.6](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.5...v0.7.0.beta.6)

### Bugfixes
* Fixed a small regression with pystrings and calling steps from stepdefs, introduced in a previous beta. (Aslak Hellesøy)

## [v0.7.0.beta.5](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.4...v0.7.0.beta.5)

### New Features
* Support RSpec 2. (RSpec >= 1.2.4 is still supported). (Aslak Hellesøy, Ryan Bigg)

### Removed features
* No more support for RSpec <= 1.2.3. (Aslak Hellesøy)

## [v0.7.0.beta.4](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.3...v0.7.0.beta.4)

### New Features
* New, experimental V8 javascript support - step definitions in Javascript! (Joseph Wilk)

### Bugfixes
* Gherkin is loaded via rubygems if it can't be found on the $LOAD_PATH. (Aslak Hellesøy)

## [v0.7.0.beta.3](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.2...v0.7.0.beta.3)

### Changed Features
* Step Definitions and calling steps from step definitions can again use And and But (was removed in 0.7.0.beta.2) (Aslak Hellesøy)

## [v0.7.0.beta.2](https://github.com/cucumber/cucumber/compare/v0.7.0.beta.1...v0.7.0.beta.2)

### New Features
* Depend on Gherkin 1.0.18, which has some bugfixes. (Aslak Hellesøy)

## [v0.7.0.beta.1](https://github.com/cucumber/cucumber/compare/v0.6.4...v0.7.0.beta.1)

Treetop is gone and replaced with Ragel. The new Ragel parser lives in the gherkin gem.
Parse times are up to 100 times faster.

### New Features
* Upgraded Sinatra example to use Sinatra 1.0 and Capybara. (Aslak Hellesøy)

### Changed Features
* New i18n translations now have to be contributed to the gherkin project.

## [v0.6.4](https://github.com/cucumber/cucumber/compare/v0.6.3...v0.6.4)

### Bugfixes
* Better handling of --guess with optional capture groups (Tim Felgentreff)
* Parsing of rerun.txt can't use Shellwords on Windows (#581 David Esposito)
* \#puts can now take non-String arguments just like Kernel#puts - #to_s is done implicitly. (Aslak Hellesøy)
* Attempt to fix Cucumber::CODEPAGE error again for Windows (#561 Aslak Hellesøy)
* Tab indentation causes multiline step arguments to fail (#585 Aslak Hellesøy)
* Properly pass tags over the wire protocol (Matt Wynne)
* Profile loading should honour the --strict option (#580 Rob Holland)
* Snippets are properly printed when using '*' as step keyword. (Used to cause infinite recursion). (Aslak Hellesøy)

### New features
* Added #puts_world method, printing the World class and all included modules (Ruby only). (Aslak Hellesøy)
* Added #puts to the PDF formatter (Nicolas Bessi)
* Show fails for After/Before hooks in the progress formatter (#584 Joseph Wilk)

### Changed features
* Switced to ISO 639-1 (language) and ISO 3166 alpha-2 (region - if applicable). Applies to Catalan,
  Swedish, Welsh, Romanian and Serbian. (Aslak Hellesøy)

## [v0.6.3](https://github.com/cucumber/cucumber/compare/v0.6.2...v0.6.3)

### Bugfixes
* Split arguments in cucumber.yml with shellwords. Example: myprofile: --out="Features report.html" (Nathaniel Haas)
* Breakage in Rails 2-3-stable after html_safe is added to the repo. (#577 Aslak Hellesøy)
* uninitialized constant Cucumber::CODEPAGE (NameError) (#561 Aslak Hellesøy)
* HTML Formatter is broken in cucumber 0.6.2 and cuke4duke 0.2.3 (#567 Dan Fitch)
* Ensure consistent load order of support files (#564 Mike Sassak)
* Fix various places in PDF formatter where HTML entities could break prawn (Matt Wynne)
* The rerun formatter outputs failed, pending and undefined scenarios (before: only failing) (Aslak Hellesøy)

### New features
* Added "Angenommen" as German synonym for Given (Sven Fuchs, Aslak Hellesøy)
* New #ask(question, timeout_seconds=60) method available to stepdefs. Asks for input and #puts-s question and answer. (Aslak Hellesøy)
* Links to step definitions are now clickable in TextMate's HTML report (Rob Aldred)
* Add diff! message to wire protocol to allow for immediate diff response to invokes (Matt Wynne)
* Add tags to begin/end scenario messages on wire protocol to support tagged hooks (#571 Matt Wynne)
* Default timeouts to 120s for invoke, begin_scenario and end_scenario messages in wire protocol (#572 Matt Wynne)

## [v0.6.2](https://github.com/cucumber/cucumber/compare/v0.6.1...v0.6.2)

### Bugfixes
* Update --help for --tags which was out of date. (Aslak Hellesøy)
* Explicitly use Prawn 0.6.3 for pdf formatter since 0.7.1 is broken (Aslak Hellesøy)
* PDF formatter renders tables incorrectly (#553 Andy Waite)
* Better colouring in HTML report (Rob Aldred)
* Detect output encoding properly on JRuby+Windows (Aslak Hellesøy)
* Added option to override output encoding on Windows with an CUCUMBER_OUTPUT_ENCODING env var (Aslak Hellesøy)
* PDF generation requires 'prawn-format' (#558 Aslak Hellesøy)

### New features
* Show profiles in error scenario summary. (#550 Joseph Wilk)

### Removed features
* element_at and table_at have been removed. Use tableish in cucumber-rails instead. (Aslak Hellesœy)

## [v0.6.1](https://github.com/cucumber/cucumber/compare/v0.6.0...v0.6.1)

### Bugfixes
* Fixed broken console handling on Windows/JRuby that was introduced in 0.6.0. (Aslak Hellesøy)

## [v0.6.0](https://github.com/cucumber/cucumber/compare/v0.5.3...v0.6.0)

Bumping to 0.6.0 for this release since we're breaking backwards compatibility with tags.

### Changed Features
* Tag boolean logic is inverted. What was ORed before is now ANDed and vice versa. (#504 Aslak Hellesøy)
  This makes it more practical in most cases to mix tags from profiles and the command line

  In previous versions the following command line:

  `--tags @foo,~@bar --tags @zap (on the command line)`

  or the following Hook:

  `Before("@foo,~@bar", "@zap") (for Hooks)`

  would be equivalent to the boolean expression:       (@foo && !@bar) || @zap
  Starting with this release it will be equivalent to: (@foo || !@bar) && @zap

### Bugfixes
* Cucumber not loading the correct settings using autospec (#496, #523 Aslak Hellesøy, Andrzej Śliwa)
* Ruby 1.9.2 fails to load features/support/env.rb (#549 Aslak Hellesøy)
* All features (except 4) pass on 1.9.2 (but not on 1.9.1) (Aslak Hellesøy)
* Add missing require statement in rerun formatter which broke RubyMine (Noah Sussman)

## [v0.5.3](https://github.com/cucumber/cucumber/compare/v0.5.2...v0.5.3)

Another small release today to please a sister project. This time Cuke4Nuke.

### New Features
* Simplified wire protocol to mostly use success / fail responses (Matt Wynne)

## [v0.5.2](https://github.com/cucumber/cucumber/compare/v0.5.1...v0.5.2)

### New Features
* On JRuby/Cuke4Duke, --require DIR will put DIR on the $CLASSPATH, making it easier to load step def classes (Aslak Hellesøy)
* New --jars option that will load jar files. Only available on JRuby. Practical for Cuke4Duke. (Aslak Hellesøy)

### Bugfixes
* Add #embed back to html formatter (#547 Brandon Faloona)
* Refactored wire protocol code and added configurable timeout to allow for long running step definitions. (#546 Matt Wynne)

## [v0.5.1](https://github.com/cucumber/cucumber/compare/v0.5.0...v0.5.1)

Small bugfix release.

### Bugfixes
* Replaced dependency on json gem with an error message, so that the cucumber gem installs on JRuby. (Aslak Hellesøy)

## [v0.5.0](https://github.com/cucumber/cucumber/compare/v0.4.4...v0.5.0)

We're bumping to 0.5.0 for this release since all of the Rails code has now moved to a new gem - cucumber-rails.
Please see History.txt in cucumber-rails for details about what's new on the Rails side.

### New features
* "Given" in Dutch is now aliased to "Gegeven" or "Stel". (Iain Hecker)
* New --i18n option to list keywords in various languages. (Aslak Hellesøy)
* Added a Tcl example using Sam Stephenson's ruby-tcl (Aslak Hellesøy)
* Added * as a synonym for Given/When/Then/And/But (for all i18n languages). (#462 Aslak Hellesøy)
* The HTML formatter produces a much nicer report, with TextMate link integration. (Rob Aldred)
* Wire protocol now supports table arguments, step definition source & regexp, snippets, pending, table diffing (Matt Wynne)

### Changed Features
* Per-word trailing-space setting for step keywords using '<'.  See 'fr' in languages.yml for example. (#525 Gregory Hnatiuk)
* Formatters will no longer be passed File objects. They must use ensure_io, ensure_file or ensure_dir. (Aslak Hellesøy)

### Bugfixes
* Exception messages are properly escaped in the HTML report. (Aslak Hellesøy)
* Improved UTF-8 support for Windows. (Aslak Hellesøy)
* Make #element_at / #table_at work on Webrat 0.6.0. This is now deprecated it in favour of #tableish from the cucumber-rails gem. (Aslak Hellesøy)
* JUnit formatter not handling multiline table steps inside Scenario Outlines (#538 Matt Wynne)
* Pending in scenario outline is red (#399 Matt Wynne)
* Allow optional step arguments to play happily with step transforms (Rob Holland)
* Regex escape the path when filtering the backtrace (Corey Donohoe & Simon Rozet)
* Add gem dependency on JSON gem, required by wire protocol (#533 Matt Wynne)

### Removed Features
* All Rails-related code is in a separate gem: cucumber-rails. Install that if you're working with Rails. (#483 Aslak Hellesøy)
* --language is removed: http://wiki.github.com/aslakhellesoy/cucumber/spoken-languages (Aslak Hellesøy)

## [v0.4.4](https://github.com/cucumber/cucumber/compare/v0.4.3...v0.4.4)

What a bad day to make a release, but here goes.

### New features
* Cucumber should use ActiveSupport::Callbacks for fixtures (#516 Adam Salter)
* Make 'I' optional in all webrat steps. (Gavin Hughes)
* Make generated cucumber.rake work with a vendored gem (Alex Rothenberg)
* Native support for ANSIColor on IronRuby via the iron-term-ansicolor gem (Will Green)
* Call a bunch of steps from step definitions - also with tables or pystrings. Copy-paste friendly (Bodaniel Jeanes, Jack Chen, Aslak Hellesøy)

### Bugfixes
* Pretty printer fails when expanding scenario outlines with -x when the background includes a table (#515 Mike Sassak)
* Ensure tags used with Before/After hooks always get parsed (#520 Joseph Wilk)
* Define IRONRUBY correctly on Ruby 1.9 (Joe Van Dyk)
* RbStepDefinition#invoke calls #backtrace_line on self rather than @proc (#503 Mike Sassak)
* Avoid duplicate cucumber entries in database.yml (Daniel Hofstetter)
* Added respond_to? when checking config.cache_classes for older Rails versions (Jeremy Durham)

### Changed Features
* Rails support has been moved to the cucumber-rails gem (Dennis Blöte, Aslak Hellesøy) TODO - WIKI DOCUMENTATION BEFORE RELEASE
* The code for Czech has changed from cz to cs. (deepj)
* $cucumber_interrupted is now Cucumber.wants_to_quit - avoid global variable, which gives warnings. (Aslak Hellesøy)
* Examples keyword without a colon is deprecated loudly. Gherkin will not recognize it at all. (Gherkin #30 Mike Sassak)

## [v0.4.3](https://github.com/cucumber/cucumber/compare/v0.4.2...v0.4.3)

The exciting thing about this release is that the wire protocol is starting to take shape. This means you can
now use Cucumber with .NET - writing step definitions in C#. And this is without having to use IronRuby at all!
See Cuke4Nuke (http://wiki.github.com/richardlawrence/Cuke4Nuke) for more information.

As usual there are several small features and bug fixes.

### New Features
* Add support for ORing tags which are passed in with seperate --tag arguments. Make comma seperated tags use AND (#368 Joseph Wilk)
* New Wire Protocol - allowing out of process execution of Cucumber scenarios. (#428 Matt Wynne)
* Added an example illustrating how to get screenshots in HTML reports (examples/watir) (Aslak Hellesøy)
* Added new #embed(file, mime_type) method to visitors and Ruby Worlds to make it easier to embed screenshots (Aslak Hellesøy)
* The #puts method available from Ruby Step Definitions will print *after* the step is executed. (#487 Zoltan Penzeli)
* Add support for rolling back transaction for all open database connections. (John Ferlito)
* Show scenario and step summary in HTML formatter (#285 Joseph Wilk)
* Ast::Table can now be constructed with an Array of Hash. (Aslak Hellesøy)

### Changed features
* The #puts method will no longer escape HTML if the html formatter is used. Escaping must be done manually. (Aslak Hellesøy)

### Bugfixes
* Fixed incorrect rendering of step arguments with UTF8 characters (Aslak Hellesøy)
* "--format rerun", with a Scenario Outline, kills cucumber (#492 Aslak Hellesøy)
* Usage formatter is not reporting time correctly. (Elliot Crosby-McCullough)
* JUnit formatter raises a more helpful error when run on a feature with no name. (#493 Matt Wynne)
* Better Danish translation (Thorbjørn Ravn Andersen)


## [v0.4.2](https://github.com/cucumber/cucumber/compare/v0.4.1...v0.4.2)

Bugfix release. The 0.4.1 release was hosed when switching from Hoe to Jeweler.

## [v0.4.1](https://github.com/cucumber/cucumber/compare/v0.4.0...v0.4.1)

This is mostly a bugfix release. Some of Cucumber's own features have been fixed so they pass on more platforms,
making it easier for people to contribute. The README.txt also describes how to get up and running with the
development environment.

### Bugfixes
* Cucumber's features verified passing on MRI 1.8.6 (OSX), 1.8.7 (OSX), 1.9.1 (OSX/Win) and JRuby 1.4.0RC1 (OSX). (Aslak Hellesøy)
* Ensure no errors are raised when limiting with tags which are not in the feature set (#464 Joseph Wilk)
* Missing Romanian keywords added for Examples, Scenario Outline and Background (to my best google translate knowledge) (Aslak Hellesøy)
* Make rerun and --drb work together again after formatter API changes (#485 Erik Hansson, John Ferlito)

### New Features
* The Rails cucumber generator will only default to RSpec if installed. And print better help. (Aslak Hellesøy)
* Added 'but' variants to Japanese. (Kakutani Shintaro)
* README.txt explains people how to run all tests. Install gems with geminstaller. (Aslak Hellesøy)
* Added support for Serbian language, both Cyrillic and Latin with usage examples. (Dejan Dimic)
* Add new 'debug' formatter for debugging and visualising the calls to listeners. (Matt Wynne)

### Changed features
* Use http://github.com/aslakhellesoy/wac instead of http://github.com/aslakhellesoy/ansicolor on Windows/JRuby (#456 Aslak Hellesøy)

### Internal changes
* Ditched Hoe for Jeweler (Aslak Hellesøy)
* Added StepMother#invoke(step_name, multiline_argument=nil) - needed by cuke4duke ticket #26 (Aslak Hellesøy)
* StepDefinitionMethods is gone.

## [v0.4.0](https://github.com/cucumber/cucumber/compare/v0.3.104...v0.4.0)

The back to stable release. When we went from 0.3.11 to 0.3.90 we thought we were close to a 0.4.0 release. Then the community
went nuts and a lot of great contributions came in. Some of those broke backwards compatibility, and we decided it would be
better to do this while still on 0.3.x.

Rails users: you *must* run script/generate cucumber after installing this version.

If something breaks for you, please please please read this file carefully. It's most likely something referenced here, and
that will give you more information so you can solve any problems. If not, just get in touch on IRC or the Google Group.

### New Features
* Total feature parsing time is shown when run with --verbose. Useful for benchmarking with future Ragel parser (Aslak Hellesøy)
* Tables yielded to step definitions are no longer frozen, so you can edit their data without #dup'ing (Aslak Hellesøy)
* Transform can now transform tables, using /table:col1,col2,col3/ (#478 Corey Haines)
* cucumber.yml can also end in .yaml and be located in .config/ or config/ dirs (#447 trans)
* Turkish support. (Hakan Şenol Ensari)
* Upgrade Rails generator to set a dependency to Spork 0.7.3. (Aslak Hellesøy)
* Installation via rubygems will print a message telling people to read this file. (Aslak Hellesøy)
* Files generated by the Rails cucumber generator have information about the risks of editing. (Aslak Hellesøy)
* Rotten Cucumber alert on Rails if you upgrade your gem without regenerating with script/generate cucumber. (Aslak Hellesøy)
* Stop the confusion between "homepage" and "home page" by allowing both (Ryan Bigg & Bodaniel Jeanes)
* Make script/cucumber file generated by the Rails cucumber generator look for cucumber in vendored gems as well. (Tom ten Thij)

### Changed Features
* Step tables now default empty table cells to empty strings and not nil (#470 Joseph Wilk)

### Removed Features
* The feature_list, feature_pattern, step_list and step_pattern properties are removed from the Rake task. Use profiles instead. (Aslak Hellesøy)
* The FeatureTask is removed. Use profiles instead.

### Bugfixes
* instance_exec get declared private (#477 Tim Galeckas)
* Transforms can return nil. (Thomas Marek)
* Generated rails rake tasks doesn't use the vendored version cucumber binary (#468 Josh Nichols)
* Incorrect diagnostics in case when Before raises in presence of Background (#465 Fedor Kocherga)
* Error on pystring in scenario outline with pretty formatter (#475 Aslak Hellesøy)
* Adding After('@allow-rescue') to set allow_rescue back to its former value. (Alf Mikula)
* Feature files are now sorted before they are executed, because different operating systems may list files differently. (Aslak Hellesøy)
* Fixed image loading for Windows in PDF formatter. Allow use of both png and jpg. (#461 Declan Whelan)
* Before('~@no-txn') is run on all scenarios without @no-txn causing Cucumber::Rails::World.use_transactional_fixtures to always be true. (#457 Aslak Hellesøy)
* JUnit formatter not handling scenario outline tables (#472 Matt Wynne)
* Language help broken (#467 Matt Wynne)
* Language help formatter aligns output better on Ruby 1.8.6 (Aslak Hellesøy)
* Better backtraces for Ruby 1.8.7. (Jakob Skov-Pedersen)
* String step definitions ( Given 'I have $number cucumbers' ) are escaped before being turned into regular expressions. (David Waite)

## [v0.3.104](https://github.com/cucumber/cucumber/compare/v0.3.103...v0.3.104)

This release has some minor changes to the command line and formatters. The biggest change is internally, paving
the way for more programming language support in Cuke4Duke, which now supports step definitions written in Java, Scala,
Groovy, Clojure and Javascript!

### New Features
* "usage" formatter should display progress (#437 Aslak Hellesøy)
* Added example for Ramaze. (Yutaka HARA)

### Bugfixes
* Fixed regression in profile formatter from 0.3.102. (Aslak Hellesøy)
* Raise a proper error message if someone forgets @ for tags, example: --tags ~foo or --tags bar. (Aslak Hellesøy)
* lib/cucumber/formatter/html.rb requires xml (#458 Brent Snook)
* lib/cucumber/formatter/html.rb requires ruby-debug (#455 Assaf Arkin)
* Allow for STDOUT formatters to be defined in profiles.  Addresses an Autotest plugin issue. (#375 Gabriel Medina)

### Removed features
* The --dry-run option no longer implies --no-source and --no-snippets. It only implies --no-snippets. (Aslak Hellesøy)

### Changed features
* The profile and usage formatters have been combined to the usage formatter. Use it eith or without --dry-run. See --help for more. (Aslak Hellesøy)
* The steps formatter has been renamed to stepdefs formatter. (Aslak Hellesøy)
* The internal programming language API has changed, giving more power to the implementation. See #428. (Aslak Hellesøy)

## [v0.3.103](https://github.com/cucumber/cucumber/compare/v0.3.102...v0.3.103)

This release gives you back some of the control over the Rails environment that was accidentally taken away from you in the
previous release.

Using this release on a Rails project requires a rerun of script/generate cucumber.

### New Features
* Added a new @no-txn tag to selectively turn off transactions for a particlular scenario.
* Added back a way to globally turn off transactions.
* Renamed @allow_rescue tag to @allow-rescue.

### Bugfixes
* Gracefully handle cases when optional regexp groups are not matched. Ex: /should( not)? be flashed '([^']*?)'$/ (Aslak Hellesøy)

### Changed Features
* The Formatter API has completely changed. Formatters are no longer a double-dispacth visitor - just a single-dispatch listener (#438 Matt Wynne)

## [v0.3.102](https://github.com/cucumber/cucumber/compare/v0.3.101...v0.3.102)

This release has some changes in the Rails support, so make sure you run "script/generate cucumber" after you upgrade.
Other noteworthy new features are improved Hook, tags and Transform support, and as always - several smaller bug fixes.

### New Features
* Added new internal API for Regexp and groups, allowing other programming languages to leverage native regexps. (Aslak Hellesøy)
* New @allow_rescue tag for Rails scenarios. Causes exceptions raised in actions to be caught by rails and not bubble up to Cucumber (Aslak Hellesøy)
* Negative tags can now be used in hooks, just like the command line's --tags option: Before('~@yarr') - will run for all scenarios that *don't* have the @yarr tag. (Aslak Hellesøy)
* Transform has current "World" scope (Larry Diehl)
* Other Transforms can be reused by calling Transform with a string inside of another Transform definition (Larry Diehl)
* Execute "After" hooks in reverse order of declaration for better behavior with dependent blocks and to mimic the behavior of at_exit (David Waite)

### Bugfixes
* features/support/env.rb runs commands twice (bugfix cuts total time by almost 50% w00t) (#452 Jim Meyer)
* Problems adding custom formatters to features/support. (features/support is added to $LOAD_PATH) (#449 Aslak Hellesøy)
* Some options set in cucumber.yml profiles are ignored (#446 Leonard CHIN)
* Missing step_definition snippets not properly displayed (#433 Aslak Hellesøy)
* rspec-rails, :lib => false (#447 David Chelimsky)
* Cucumber with Spork breaks on OS X Snow Leopard (#431 David Chelimsky)

### Changed Features
* Tag names passed on the command line *always* have to use the @ sign. --tags foo or --tags ~bar won't work. Use --tags @foo or --tags ~@bar (Aslak Hellesøy)

### Removed features
* The Cucumber::Rails.bypass_rescue no longer exists. Errors will always bubble up, unless you use the new @allow_rescue tag. (Aslak Hellesøy)
* The Cucumber::Rails.use_transactional_fixtures no longer exists. Transactional fixtures are always enabled for the cucumber environment. (Aslak Hellesøy)

## [v0.3.101](https://github.com/cucumber/cucumber/compare/v0.3.100...v0.3.101)

Two exciting things in this release. Step Argument Transforms and a PDF formatter you can use to send
your features to your customer for review!

### New Features
* New pdf formatter (#425 Mads Buus)
* Step Argument Transforms: These let you use the Transform method to register regular expressions
  to catch and transform/coerce arguments before they are yielded to step definitions:
  http://wiki.github.com/aslakhellesoy/cucumber/step-argument-transforms (Larry Diehl & Dave Astels)
* Adding webrat steps for asserting content does or does not exist within a particular element
  (using webrat's within method)  (Kieran Pilkington)

## [v0.3.100](https://github.com/cucumber/cucumber/compare/v0.3.99...v0.3.100)

The JavaZone release!

### New Features
* Added support for Uzbek (msarvar)
* The file argument on the cucumber command line will replace contents of file on cli if file is prefixed with @ (Tero Tilus)

### Bugfixes
* Backtraces on JRuby are handled in a cleaner way when the exception comes from Java (NativeException). (Aslak Hellesøy)
* When exceptions occur in a Before block the rest of the scenario is now skipped (#331 Matt Wynne)

## [v0.3.99](https://github.com/cucumber/cucumber/compare/v0.3.98...v0.3.99)

### New Features
* Support for Croatian (Bkrsta)
* Make #feature available from scenario so you can do: Before{|scenario| scenario.feature}. (Aslak Hellesøy)
* cucumber.yml parsing supports ERB syntax (#427 Gregory Hnatiuk)
* New AfterConfiguration hook added; a block can be specified that takes Cucumber::Cli::Configuration (#423 Brent Snook)
* Cucumber::Cli::Configuration#feature_dirs and #out_stream exposed as public attributes so that they may be used in AfterConfiguration hook (#423 Brent Snook)

## [v0.3.98](https://github.com/cucumber/cucumber/compare/v0.3.97...v0.3.98)

Just a small release to help Cuke4Duke, which will be presented at Agile2009
in 2 days.

### New Features
* Backtrace filtering now happens in StepInvocation class, meaning other languages (Cuke4Duke) can get backtraces stripped. (Aslak Hellesøy)
* Cucumber::Ast::Table#map_headers now allows for a block that will convert all the headers. See docs for details. (Ben Mabey)

## [v0.3.97](https://github.com/cucumber/cucumber/compare/v0.3.96...v0.3.97)

The AA-FTT release. Creating a release for the AA-FTT meeting in Chicago so that we can play
with the new language API and maybe knock out some better .NET support.

### Bugfixes
* Allow comments on examples sections underneath scenario outlines (#420 Mike Sassak)
* Table.map_headers! will fail with a decent error message when 0 or 2+ headers are matched. (Aslak Hellesøy)
* Fixed an issue with comments with preceding spaces after a background causing a parse error (#401 Joseph Wilk)

### New Features
* The public API is documented and there is a new :sdoc task to generate nice searchable API docs.
* Add :default => :cucumber when setting up Rake tasks for Cucumber in Rails (Aslak Hellesøy)
* New When /^I fill in "([^\"]*)" for "([^\"]*)"$/ Webrat step for Rails (Aslak Hellesøy)

### Changed Features
* Changed the Programming Language API to support languages without "bleed through" (e.g. rubypython can't invoke ruby objs) (Aslak Hellesøy)
* The Programming Language API manages hooks on the language level instead of on the step mother level (Aslak Hellesøy)

## [v0.3.96](https://github.com/cucumber/cucumber/compare/v0.3.95...v0.3.96)

This release doesn't have any significant new features or bug fixes, but there are big
internal changes. This release has a new API for plugging in other programming languages.
You can read more about that here: http://groups.google.com/group/cukes/browse_thread/thread/b9db8bf1f3ec9708

This might break other tools that are using Cucumber's internal APIs. For example Spork broke and had to
be patched. Please upgrade to Spork 0.5.9 if you are using Spork.

### New Features
* Ability to preload natural language in Spork's prefork. Rerun script/generate cucumber --spork to see how. (Aslak Hellesøy)
* Ability to control which DRb port is used via the --port flag or by setting CUCUMBER_DRB environment variable. (Chris Flipse)
* Upgrade Rails generator to use webrat 0.5.0. (Aslak Hellesøy)
* Upgrade Sinatra example to work with rack-test 0.4.1 and webrat 0.5.0. (Aslak Hellesøy)

### Changed Features
* --strict will cause an exit code 1 for missing and pending (used to be for missing only). (Mads Buus)
* junit formatter doesn't report pending steps unless --strict is used. (Mads Buus)

## [v0.3.95](https://github.com/cucumber/cucumber/compare/v0.3.94...v0.3.95)

This release improves Webrat support for table-like HTML markup. Now you can easily turn the HTML
elements table, dl, ol and ul elements into a 2D array. This is particularly useful for comparing
data in your HTML with a Cucumber table using Cucumber::Ast::Table#diff!

This release also fixes several bugs related to --drb (Spork) and profiles (cucumber.yml)

### Bug Fixes
* --guess will always prefer the longest regexp with no groups if they exist.
* Prevent delays if a NoMethodError is raise in a step definition. Define a light #inspect in World. (#374 Aslak Hellesøy)
* Restore 'features' as the default feature running path. (#412 Ben Mabey)
* --drb degrades gracefully when no drb server is running and no formatter is provided. (#410 Ben Mabey)
* --language picked up from profiles again. (#409 Ben Mabey)
* Resolved infinite loop problem when --drb was defined in a profile. (#408 Ben Mabey)

### New Features
* Cucumber::World#table has been overloaded to work with 2D Array in addition to a table String to be parsed.
* New When /^I fill in the following:$/ step definition for Webrat. Useful for filling out a form with a Table. (Aslak Hellesøy)
* The object returned by element_at (Webrat::Element) has a #to_table that works for table, dl, ol and ul. (Aslak Hellesøy)
* An explanation of why failures are ok is printed when --wip is used. (Aslak Hellesøy)
* Added cucumber alias for cucumber:ok in Rails Rake tasks. (Aslak Hellesøy)

### Changed features
* element_at('table').to_table should be used instead of table_at('table').to_a. The old way is deprecated but still works. (Aslak Hellesøy)
* element_at (and the depracated table_at) no longer takes a DOM id, only CSS selectors. Change "my_id" to "#my_id". (Aslak Hellesøy)

## [v0.3.94](https://github.com/cucumber/cucumber/compare/v0.3.93...v0.3.94)

Kanban take II.

Release 0.3.6 introduced a new --wip switch that can be used to limit work in progress
(WIP). Limiting WIP is central for Kanban Software Development (http://www.infoq.com/articles/hiranabe-lean-agile-kanban).

However, this feature went mostly unnoticed, and because we think it's so great we have decided
to make it the default for Rails projects. When you bootstrap your Rails project for Cucumber
you will now get 2 Cucumber Rake tasks for Kanban development:

    cucumber:ok  : Run features that should pass. This runs your "good,old" features
    cucumber:wip : Run the features you're working on that don't pass yet. Tag them with @wip. Max 2!

So upgrade today and get into the habit of tagging new features with @wip (or invent your own tags).
You'll achieve better flow this way.

### New features
* Support limiting the number of feature elements with certain tags (#353 Joseph Wilk)
* script/generate cucumber sets up 'cucumber:ok' and 'cucumber:wip' tasks and deprecates 'features'. More Kanban love. (#344 Aslak Hellesøy)
* Better JUnit formatter: feature->testsuite, scenario->testcase. Better timing and support for background and scenario outline. (Mads Buus Westmark)
* Added examples/python that uses rubypython. (Aslak Hellesøy)
* Checks the number of available colors on the terminal with ruby-terminfo if ruby-terminfo is installed.
  This prevents Apple's Terminal.app from stalling (Yugui - Yuki Sonoda).
  * Set 'xterm-256color' to TERM if your terminal supports grey.
  * ruby-terminfo is available as genki-ruby-terminfo gem from github.
* Document builtin formatters with --help. (#406 Aslak Hellesøy)
* Added support for using regular expressions when mapping table headers.  (Peter Williams)

## [v0.3.93](https://github.com/cucumber/cucumber/compare/v0.3.92...v0.3.93)

Highlights in this release: Improved profile handling (cucumber.yml) and a fix for cucumber hanging.

### New features
* script/generate cucumber --spork now sets up a spork gem dependency in the cucumber.rb environment. (Aslak Hellesøy)
* Feature files defined on the command line override any that are present in profiles. (#344 Ben Mabey)
* Default (STDOUT) formatter defined in profile can be overridden from the command line. (#344 Ben Mabey)
* Displays which profile, if any, is being used. (Ben Mabey)
* click_link_within(parent, link) webrat step (Joakim Kolsjö)

### Bugfixes
* script/cucumber correctly loads the gem's binary if the plugin isn't installed.
* Cucumber hangs waiting for Ctrl+C if an Error is raised. (#374 Aslak Hellesøy)

## [v0.3.92](https://github.com/cucumber/cucumber/compare/v0.3.91...v0.3.92)

This release has some minor improvements to the new Table.diff! functionality. For example,
if you're using Webrat and you want to compare a feature table with a HTML table containing
links in one of the columns, you can do:

    actual = Cucumber::Ast::Table.new(table_at('table').to_a)
    actual.map_column!('Name') { |text| text.strip.match(/>(.*)</)[1] }
    table.diff!(actual)

### New features
* Allow Step Definitions to accept mix of required & optional args (Niels Ganser)
* table_a.diff!(table_b) now uses column conversions from both tables (Table#map_column!) (Aslak Hellesøy)

### Bugfixes
* Upgrade Sinatra example to work with rack-test 0.3.0 and aslakhellesoy-webrat 0.4.4.1 (Aslak Hellesøy)
* require 'cucumber/webrat/table_locator' added to Spork environment for Rails (Anders Furseth)

### Changed Features
* The 'default' profile is now ALWAYS used unless you specify another profile or use the -P or --no-profile flag. (#344 Ben Mabey)

## [v0.3.91](https://github.com/cucumber/cucumber/compare/v0.3.90...v0.3.91)

### New Features
* CTRL-C will exit immediately instead of carrying on until all features are run. (Aslak Hellesøy)
* Run can be stopped programmatically by setting $cucumber_interrupted = true, for example in an After block. (Aslak Hellesøy)
* Support limiting the number of feature elements with certain tags (#353 Joseph Wilk)
* Table support for cuke4duke

## [v0.3.90](https://github.com/cucumber/cucumber/compare/v0.3.11...v0.3.90)

The Hot summer release

This is a hot summer in Norway, and Cucumbers are growing in abundance. To celebrate this we give you
a new release with lots of new features and bugfixes. This is also one of the last releases in the 0.3 series
(hence the 0.3.90 number), so 0.4 (or maybe 1.0!) will be coming up soon. The highlights of this release are:

### Egality

English is not the world's most spoken language, so why should Cucumber force non-English speakers to use the
--language flag? As of this release you're no longer forced to do that. Instead, you can add a comment header
to your .feature files:

    # language: fr
    # Cucumber understands that this is French
    Fonctionnalité: Trou de boulette

If you don't have that header, Cucumber will work as before - using whatever you specified with --language,
or default to English if no --language option was specified. A nice side effect of this is that you can now
have features in several languages side by side and run them in the same cucumber. (Not recommended unless
you want to take polyglot programming to an extreme level).

### Table diffing (experimental)

When you pass a table as an argument to your Then steps you often want to compare that table
to some actual values. In previous releases you had to iterate over the table's values and manually
compare each row using cell.should equal('foo') or assert_equal('foo', cell). If a discrepancy was found
you'd get an error, but it was hard to see how the entire expected data set was different from the actual one.

With this release you have a much more powerful way to compare expected tables with actual data. An
Ast::Table object now has a new #diff!(table) method that you can invoke in your step definitions
that take table arguments. If the table you pass in is different from the expected table (from your
plain text step), Cucumber will print the difference for each of the row or column and fail your step.

The Table#diff! method expects an Array of Array, Array of Hash (similar to what you'd get from table#hashes)
or simply another Ast::Table object. Here is a simple example:

    Then /^I should see the following cukes:$/ do |expected_cukes_table|
      actual_table = ... # For example [['Latin', 'English'], ['Cucumis sativus', 'Cucumber'], ['Cucumis anguria', 'Burr Gherkin']]
      expected_cukes_table.diff!(actual_table)
    end

As an extra bonus we provide Webrat users with a new #table_at(selector) method that you can use to transform
an HTML table into an Array of Array, so that you can easily compare the contents of your HTML table to
expected data passed to a step. Here is an example:

    Then /^I should see the following cukes:$/ do |expected_cukes_table|
      expected_cukes_table.diff!(table_at('#cuke_table').to_a)
    end

You can do the same trick to compare data from a Rails ActiveRecord table (although this is not a
recommended practice - your Then steps should compare against what users *see*, not what's in the
database):

    # This requires that you use the column names in the header of the plain text expected table
    Then /^I should have the following cukes in the database:$/ do |expected_cukes_table|
      expected_cukes_table.diff!(Cuke.find(:all).map(&attributes))
    end

### Environment variables

Another useful new feature is the ability to define environment variables on Cucumber's command line (just
like you can with Rake). Example:

    cucumber FOO=BAR --format progress features

You can now pick up ENV['FOO'] in ruby (for example in env.rb) and take actions according to the value,
for example enabling your super hack that validates all HTTP responses for XHTML validity.

This release also has several bugfixes related to --format and Before/After hooks.

### Bugfixes
* Fix some misspellings which affect test fail for Korean example (#373 Dongju Kim)
* Make it possible to write non-localized step definitions (#377 Aslak Hellesøy)
* Table cells containing unicode are rendered incorrectly (#386 Stefan Kanev)
* Before and After hooks run after everything is finished when there are 2+ --format options (#371 Aslak Hellesøy)
* When using --out and two --format the first is not delivered inline with execution of features (#361 Aslak Hellesøy)
* Profile Formatter broken (#370 Aslak Hellesøy)
* Default profile usage with --drb flag degrades gracefully with no server. (#367 Ben Mabey)
* JUnit formatter uses original file name instead of narrative to avoid accidental duplicate XML files (Aslak Hellesøy)
* rake gems no longer lists cucumber as a [F]ramework gem (David Chelimsky)
* CLI issues correct exit code when using --drb. Requires Spork version >= 0.5.1. (#355 Ben Mabey)
* Make sure script/generate cucumber --spork uses the cucumber Rails environment (Philippe Lafoucrière)
* Fixed bug with rake task raising errors with feature files with spaces (#380 Joseph Wilk)

### New Features
* I should see should support regexes (#382 John Ferlito)
* Access to scenario outline name from After hook scenario parameter (#342 Aslak Hellesøy)
* Allow multiple --tags switches to be passed
* Load step definitions from vendored gems and plugins (#388 Mike Burns)
* New --format steps formatter. Variant of the usage formatter that lists available step definitions (Demetrius Nunes)
* Possibility to specify scenario language as part of the .feature file (#345 Aslak Hellesøy)
* Support specifying environment variables using foo=bar syntax on command line or in profiles (#362 Bryan Helmkamp)
* Display failing scenarios at the end of pretty format to make it easier for people to play them back (#360 Ryan Bigg)

### Changed Features
* When using --tags, positive tags are &&'ed while negative tags are ||'ed (John Wilger)
* The data returned from Table#hashes and similar methods are frozen. Dup if you need to modify. (Aslak Hellesøy)
* Visitor.visit_table_cell_value(value, col_width, status) is now visitor.visit_table_cell_value(value, status)

## [v0.3.11](https://github.com/cucumber/cucumber/compare/v0.3.10...v0.3.11)

This release just fixes a tiny bug in the formatter to fix an incompatibility
with the latest RedMine release. It should have been included in 0.3.10, but
was forgotten.

### Bugfixes
* Formatter API was broken in 0.3.9 (Roman Chernyatchik)

## [v0.3.10](https://github.com/cucumber/cucumber/compare/v0.3.9...v0.3.10)

The Spork Release!

This release has an exciting new feature - a new --drb switch! This magic switch lets you run your
features much faster than before, because you can eliminate the startup time for your code. This is
thanks to a brand new gem called Spork by Tim Harper and Ben Mabey. (You can find out more about Spork
here: http://github.com/timcharper/spork/tree/master). You can start Spork and have it preload your
application in a separate process. Spork listens for DRb connections, and when you run cucumber with
--drb the features will run inside the Spork server instead. Spork provides two simple hooks for preloading
your application - one for framework/stable code (Spork.prefork) and one for the code that *you* write and
change often (Spork.each_run). Keep in mind that all World, Before, and other Cucumber hooks need to be
in the Spork.each_run block.  Using Spork works great for Ruby on Rails, which can take a while to load,
but --drb and Spork aren't tied to Rails at all. The new --drb switch also works great alongside autotest
(just add --drb to your autotest profile in cucumber.yml), so now you can get even faster feedback.

Cucumber's built-in cucumber generator now has a new --spork switch, so when you bootstrap your Rails
application for cucumber, you can have spork configuration set up out of the box. (It's just a
slightly different env.rb.)

Although Spork was in mind when the --drb switch was added it is important to realize that all that was added
to Cucumber was a DRb client.  Any DRb server that adheres to this protocol can be used with Cucumber's --drb
switch. While Spork is geared towards removing the load time to give you a faster feedback loop you could
just as easily use this client with a server that distributes your features to run in parallel. Someone just
needs to write such a server. ;)

This release also has some minor bugfixes related to RSpec and Rails interop.

### Bugfixes
* RSpec's be_* matchers did not work in 0.3.9 and probably earlier versions. Now they do. (Aslak Hellesøy)
* The Rails cucumber environment won't declare gem dependencies if the plugin exists. (Aslak Hellesøy)
* The Rails cucumber generator will no longer declare gem dependencies on rspec if you use --testunit. (Aslak Hellesøy)

### New features
* Spork support via --drb. (Ben Mabey)
* Added a Ast::Feature#name method for convenience. (Aslak Hellesøy)

### Changed features
* The HTML formatter wraps examples in a div, and distinguishes between Scenario and Scenario Outline. (Aslak Hellesøy)

## [v0.3.9](https://github.com/cucumber/cucumber/compare/v0.3.8...v0.3.9)

Bugfix release for 0.3.8 released earlier today. 0.3.8 had a bug in the Rails cucumber
generator which is fixed in 0.3.9.

### Bugfixes
* Fix broken Rails cucumber generator (Tim Glen)
* The Cucumber Rake task in non-fork mode will properly cause Rake to exit with 1 when Cucumber fails. (Aslak Hellesøy)

## [v0.3.8](https://github.com/cucumber/cucumber/compare/v0.3.7...v0.3.8)

This Cucumber version fixes several bugs related to Ruby on Rails and RSpec. If you
use Cucumber with a Rails app we *strongly* recommend you bootstrap Cucumber again:

    ruby script/generate cucumber

### New Features
* Rails cucumber generator sets up default gem dependencies in cucumber environment.
* The duration of a run is reported by formatters - same format as the Linux time command (#228 Aslak Hellesøy)
* Scenario and ExampleRow objects (passed to Before and After hooks) have #name and #line methods (#316 Aslak Hellesøy)
* Rails generator creates a cucumber environment file to avoid potential cache_classes conflicts in test.rb (#165, Ben Mabey)
* HTML formatter renders @tags (but the CSS is still ugly)

### Removed/changed features
* The Cucumber Rake task will again fork by default (as 0.3.3 and earlier). Forking must be turned off explicitly. (Aslak Hellesøy)

### Bugfixes
* Better coexistence with RSpec - Cucumber now *neuters* the part of RSpec that tries to parse ARGV.
* The differ= exception is gone (#325, #340 Aslak Hellesøy)

## [v0.3.7](https://github.com/cucumber/cucumber/compare/v0.3.6...v0.3.7)

This is the "Help JetBrains RubyMine" release!

### New Features
* Added new Given alias for Catalan: Donat|Donada (Lleïr Borràs Metje)
* New --expand option. This will print Scenario Outlines once for each Example row - with values expanded. (#327 Aslak Hellesøy)
* You can override the formatter in Rails-generated rake tasks with the CUCUMBER_FORMAT environment variable (#335 Aslak Hellesøy)

### Bugfixes
* 'specs' folder needs to be renamed back to 'spec' (#339 Aslak Hellesøy)
* CUCUMBER_OPTS doesn't work for cucumber rake tasks (#336 Aslak Hellesøy)

## [v0.3.6](https://github.com/cucumber/cucumber/compare/v0.3.5...v0.3.6)

Kanban! With this release you can tag features or scenarios that are work in progress
with a tag and use the new --wip switch.

Another handy feature in this release is that you can package your own formatters in RubyGems.

### New features
* New --wip switch. See http://www.jroller.com/perryn/entry/bdd_on_a_multi_disciplined (Perryn Fowler)
* Added a AfterStep hook (Luke Melia)
* New aliases for Vietnamese (Ngoc Dao)
* Automatic require of custom formatters. --require is no longer needed to load them, and they can be in Ruby gems. (Aslak Hellesøy)
* Lazy loading of built-in formatters. Should improve startup time a little bit.

### Bugfixes
* Gracefully handle exceptions in After block (#330 Matt Wynne)
* Feature with only Background doesn't run hooks (#314, #329 Aslak Hellesøy)

## [v0.3.5](https://github.com/cucumber/cucumber/compare/v0.3.4...v0.3.5)

Let's make a new release today because two annoying bugs are fixed.

### Bugfixes
* Allow feature element names to contain Gherkin keywords as long as they are not the first word on a newline (#319, #307 Joseph Wilk)

## [v0.3.4](https://github.com/cucumber/cucumber/compare/v0.3.3...v0.3.4)

A couple of great new features in this release. Running with Rake is faster than before,
and there is a brand new JUnit formatter - great for Continuous Integration reports!

This release was made especially for the Oslo XP Meetup today.

** IMPORTANT UPGRADE NOTES FOR RAILS USERS **

Running Cucumber features in the same Ruby interpreter as Rake doesn't seem to work,
so you have to explicitly tell the task to fork (like it was doing by default in prior
versions). In lib/tasks/cucumber.rake:

    Cucumber::Rake::Task.new(:features) do |t|
      t.fork = true # Explicitly fork
      t.cucumber_opts = %w{--format pretty}
    end

(If you run script/generate cucumber this will be done for you).
Alternatively you can omit forking and run features like this:

    RAILS_ENV=test rake cucumber

However, setting the RAILS_ENV is easy to forget, so I don't recommend relying on this.

### Bugfixes
* Hooks (World, Before, After) are no longer executed when --dry-run (Aslak Hellesøy)
* Proper UTF8 use in HTML formatter (Herminio Torres)
* Problem with multiple terms in languages.yml (#321 Aslak Hellesøy)

### New features
* New JUnit formatter (Gareth Jones)
* Support for Vietnamese (Ngoc Dao)
* Added aliases for Feature and But in Japanese (Leonard Chin)
* Support for Catalan (Francesc Esplugas)

### Changed features
* --exclude flag now works on ruby files in addition to feature files (#312 Ben Mabey)
* The Java example under examples/java uses Ant instead of Rake - and the new JUnit formatter.
* Rake task should not shell out (#297 Aslak Hellesøy)
  The Cucumber Rake task will run Cucumber in the same Ruby interpreter as Rake itself
  unless explicitly told to fork a new interpreter. This is to increase speed. You can
  force a new interpreter by setting fork=true or rcov=true in the task.

## [v0.3.3](https://github.com/cucumber/cucumber/compare/v0.3.2...v0.3.3)

Minor bugfix release, made specially for EuRuKo!

### Bugfixes
* Summaries are no longer printed in an empty () if there are no scenarios/steps (Aslak Hellesøy)
* Background, Scenario Outline, Before Hook interaction (#309 Aslak Hellesøy)
* Multiline String snippets no longer give misleading info. It's a String, not a PyString that's sent to step def.

### Removed/changed features
* New aliases: --no-source/-s, --name/-n (#317 Lonnon Foster)

## [v0.3.2](https://github.com/cucumber/cucumber/compare/v0.3.1...v0.3.2)

This release has some minor bug fixes and new features.
Nothing major, but we need a release for RailsConf'09 in Las Vegas!

### Bugfixes
* rake tasks with profiles not respecting --require flags (#311 Ben Mabey)
* Step table with blank cell fails (#308 JohnnyT)
* Fixed error where unused table cells in Examples where raising exceptions due to having no status (#302 Joseph Wilk)

### New features
* Support for Hebrew (Ido Kanner)
* Summary should report scenarios (#32 Aslak Hellesøy)
* Examples and the associated tables are indented one level deeper than Scenario Outline. (Aslak Hellesøy)
* Added support for Examples selection when using --name. (#295 Joseph Wilk)

## [v0.3.1](https://github.com/cucumber/cucumber/compare/v0.3.0...v0.3.1)

This release has several minor bug fixes and new features. With the addition of Latvian and Hungarian Cucumber
now supports 32(!!) languages.

### New features
* Support multiline names for Scenarios, Scenario Outlines, Backgrounds, Examples (#231 Joseph Wilk)
* Added #headers to Cucumber::Ast::Table (Ben Mabey)
* New translation for Latvian (Vitauts Stočka)
* New translation for Hungarian (#287 Bence Golda)
* Pick up failure on after hook (#272 Aslak Hellesøy)

### Bugfixes
* Pretty formatter not colouring Examples tables correctly (#304 Aslak Hellesøy)
* Problem using --scenario and Scenario Outline (#298 Aslak Hellesøy)
* Tag Hook gets executed always there is a background (#301 Aslak Hellesøy)
* Feature which only has a Background with steps causes an exception (#306 Aslak Hellesøy)
* Gem no longer depends on Hoe (Aslak Hellesøy)
* Span html tags appear on HTML results with 0.3.0 (#299 Aslak Hellesøy)
* Fixed incorrect colours in pretty formatter's table headers for outline tables (Aslak Hellesøy)
* Exceptions from steps called within hooks are now reraised. (#294 Ben Mabey)

### Removed/changed features
* --scenario handle has been removed and replaced with --name which supports partial matches, regexp special characters, running named backgrounds (#295 Joseph Wilk)

## [v0.3.0](https://github.com/cucumber/cucumber/compare/v0.2.3...v0.3.0)

This release has some minor changes to the APIs, but big enough that a new major release is in order.
The biggest change is the new semantics of the #World method. Previously you would call this method
several times, passing a Proc and extending the world object of the previous one with a Ruby module.
The problem was that there was no nice way to ensure the order in which these procs were called, which
led to some unexpected situations. In this release you can only register a single World proc. If you
want to extend a world with certain modules, you simply call the #World method with the module(s)
you wish to extend the World with. The Sinatra example illustrates how to do this. Also check out
the RDoc for Cucumber::StepMother#World.

The Visitor API (which is used for formatters) has also changed slightly. However, we have tried to
do this in a backwards compatible way, so if you have custom formatters for Cucumber 0.2 they should
still work.

One of the most significant new features is Tagged Hooks: http://wiki.github.com/aslakhellesoy/cucumber/hooks
This lets you associate Before and After blocks with specific scenarios.

We are also deprecating the step_list, step_pattern, feature_list, and feature_pattern accessors on
Cucumber::Rake::Task. These accessors will be completely removed in version 0.4. For complex settings
please rely on cucumber profiles in your rake tasks:
http://wiki.github.com/aslakhellesoy/cucumber/using-rake#profiles

### New features
* Use Hooks with @tags (#229 Aslak Hellesøy)
* Rake task supports cucumber.yml profiles (#187 Ben Mabey)
* Field value steps for Webrat (Jack Chen)
* Added translation for Bulgarian (Krasimir Angelov)
* Updated translation for Polish (#273 Grzegorz Marszałek)
* Only a single World proc can be registered. World extension now happens by calling #World with ruby modules.
* Portuguese uses Funcionalidade in stead of Característica and accented words are aliased with unaccented ones (Alexandre da Silva and Felipe Coury).
* The usage formatter also prints unused step definitions (Aslak Hellesøy)
* Better exception if a World proc returns nil. (Aslak Hellesøy)
* Allow Step Definitions to use |*varargs|, but only on Ruby 1.9. (Aslak Hellesøy)
* Snippets for steps that use Step Tables or PyStrings include block param and object type hint comment (#247 Joseph Wilk)
* Support description string for Backgrounds (#271 Joseph Wilk)

### Bugfixes
* After methods not being executed when Background fails (#288 Luismi Cavallé)
* Fixed dependency on internal files in rspec breaks cucumber w/ rspec-1.2.4 (#291 Aslak Hellesøy)
* Fix color use when using autotest on Linux. (Hans de Graaff)
* Fixed incorrect calculation of pystring indentation (#279 Eugene Naydanov)
* Fixed --format html leads to an error (#252 Aslak Hellesøy)
* Fixed Background runs twice (#255 Aslak Hellesøy)
* Fixed Background Transactions and :xx (#270 Aslak Hellesøy)
* Fixed Autospec failing with cucumber 0.2 (#254 Aslak Hellesøy)
* Sibling file detecting not working (#278 Aslak Hellesøy)

### Removed/changed features
* The visitor API has changed slightly:
  * \#visit_step_name, #visit_multiline_arg and \#visit_exception are no longer official API methods.
  * \#visit_step_result replaces those 3 methods.
  * Table and PyString no longer hold status information. Each visitor subclass should store state in @state if needed.
  * \#visit_py_string no longer takes a status argument.

## [v0.2.3](https://github.com/cucumber/cucumber/compare/v0.2.2...v0.2.3)

This release sports 4 updated languages, slightly better help with snippets if you "quote" arguments
in your steps. Windows/JRuby users can enjoy colours and you get some more sugar with Tables.

### New features
* Added new Then /^I should be on (.+)$/ do |page_name| step (Grant Hollingworth)
* Use skipped_param color for examples table header (#266 Eugene Naydanov)
* Added new Cucumber::Ast::Table#rows_hash method (Torbjørn Vatn)
* Windows/JRuby users can now enjoy colourful output (via http://github.com/aslakhellesoy/ansicolor) (#166 Aslak Hellesøy)
* Ambiguous step errors hint about --guess (unless --guess already on) (Aslak Hellesøy)
* Added translation for Slovak (Ahmed Al Hafoudh)
* Updated translation for Dutch (Bart Zonneveld)
* Updated translation for Italian (Alessandro Baroni)
* Updated translation for Japanese (KAKUTANI Shintaro)

### Bugfixes
* Fixed step name after step keyword without space (#265 Aslak Hellesøy)
* Backtrace is back in HTML reports (Aslak Hellesøy)

## [v0.2.2](https://github.com/cucumber/cucumber/compare/v0.2.1...v0.2.2)

This release includes some minor changes to make Cucumber work with pure Java. Cucumber
has already worked with Java for a while (using JRuby and step definitions in Ruby),
but now you can write step definitions in pure Java!

Check out the Cucumber Java project for more details:
http://github.com/aslakhellesoy/cucumber_java/tree/master

## [v0.2.1](https://github.com/cucumber/cucumber/compare/v0.2.0...v0.2.1)

This release fixes a few minor bugs and adds a couple of new features.

### Bugfixes
* Fixed Cucumber, and rails controller error handling (#49 Matt Patterson)
* HTML Formatter doesn't work correctly with scenario Outlines. (#260 Aslak Hellesøy)
* After blocks are run in reverse order of registration. (#113 Aslak Hellesøy)
* Snippets are showing 'Ands' (#249 Aslak Hellesøy)

### New features
* Snippets use a regexp and block arguments if the step name has "quoted" arguments. (Aslak Hellesøy)
* Cucumber::Ast::Feature#to_sexp includes the file name. (Aslak Hellesøy)
* support/env.rb is not loaded when --dry-run is specified. This is to increase performance. (Aslak Hellesøy)
* New usage formatter. This is the foundation for editor autocompletion and navigation between steps and step definitions. (#209 Aslak Hellesøy)

### Removed features
* -S/--step-definitions option introduced in 0.2.0 is removed. Use --format usage [--dry-run] [--no-color].

## [v0.2.0](https://github.com/cucumber/cucumber/compare/v0.1.16...v0.2.0)

This release sports a bunch of new and exciting features, as well a major rewrite of Cucumber's internals.
The rewrite was done to address technical debt and to have a code base that is easier to evolve and maintain.

There are some changes to the Gherkin language that breaks backwards compatible with the 0.1.x series.
Most importantly, "GivenScenario" and "More Examples" no longer exist. See the "Removed features" section
below for more details on how to use alternatives.

Since the grammar has changed, there are some new keywords. We have to rely on the community
to provide updated translations. This is much easier than before - just update languages.yml.
There is no static code generation anymore. To list all languages:

    cucumber --lang help

And to list the keywords for a particular language:

    cucumber --lang en-lol help

There are some really awesome new features in this release: Tagging, Autoformatting, automatic
aliasing of keywords in all languages, full Ruby 1.9 support and improved output
for multiline arguments are some of the highlights.

### Bugfixes
* New StepInvocation breaks console formatter for pending steps. (#241 Jacob Radford)
* Within Scenario Outlines when replacing with a nil in a step name use empty string instead. (#237 Joseph Wilk)
* Fixed bug with Scenario Outlines incorrectly replacing values in step tables with nil. (#237 Joseph Wilk)
* Within Scenario Outlines when replacing with a nil in multiline strings use empty string instead. (#238 Joseph Wilk)
* Re-structure the ast: Feature -> Background -> (Scenario|ScenarioOutline)*. Fixes bug with background being called outside transactions. (#181 Joseph Wilk)
* --strict always exits with status 1 (#230 Tim Cuthbertson)
* Fix error with nil values in tables raising an exception (#227 Joseph Wilk)
* Add support for using << in formatters to ensure the html formatter works (#210 Joseph Wilk)
* Explicitly require env.rb files first to avoid potential load order problems. (#213, Ben Mabey, Randy Harmon)
* Depend on polyglot version (0.2.4) to avoid masking require errors. (Aslak Hellesøy).
* -n option does not suppress the line info for a Scenario Outline (#175 Aslak Hellesøy)
* Errors with rspec-rails matchers in cucumber 0.1.99 (#173 David Chelimsky)
* Can't use an empty string as a table value in a scenario outline (#172 Aslak Hellesøy)
* Really skip skipped steps (#90 Aslak Hellesøy)
* No output for multi-line strings (#71 Aslak Hellesøy)
* Fix cucumber/formatter/unicode flaws on Windows (#145 Michael)
* Autotest-related Bugs: YAML missing (#136 Tobias Pape)
* Overeager "rescue LoadError" hides lots of errors (#137 Jonathan del Strother)
* Nested steps don't show mismatch (#116 Aslak Hellesøy)
* Pending steps in > steps called from steps (#65 Aslak Hellesøy)

### New features
* Australian translation (Josh Graham)
* Added World#puts(announcment) which lets you output text to the formatted output (#222 Rob Kaufmann)
* Added Table#transpose to to allow use of vertically aligned table keys (Torbjørn Vatn, Aslak Hellesøy)
* Added Table#map_headers to to allow use of more readable headers (Rob Holland)
* New -S/--step-definitions option. Useful (among other things) for tools that implement automcompletion. (#208 Aslak Hellesøy).
* The cucumber.rake file defines a dummy :features task if Cucumber is not installed (#225 Josh Nichols)
* Added Table#map_column! to ease casting of cell values into relevant types (#223 Rob Holland)
* New --no-diff option (#218 Bryan Ash)
* Rails generators supports testunit and rspec option, defaulting to rspec (#217 Josh Nichols)
* Sinatra Example (#204 Rob Holland)
* Keywords can be aliased in languages.yml. See English for an example (examples: Examples|Scenarios)
* Adding support for Background (#153 Joseph Wilk)
* Added Česky/Czech (Vojtech Salbaba)
* New --no-multiline option to reduce noise in output. Useful if lots of features are failing. (Aslak Hellesøy)
* Added ability to pass URIs to cucumber in addition to files and directories. Useful for troubleshooting! (Aslak Hellesøy)
* Groups of tabular scenarios (#57 Aslak Hellesøy)
* Tagging scenarios and features. Pick the ones to run with --tags (#54 Aslak Hellesøy)
* Make the current scenario available to the steps. (#44 Aslak Hellesøy)
* Step definition snippets contain a 'pending' call (#84 Aslak Hellesøy)
* Call multiline steps from other steps (#144 Aslak Hellesøy)
* Run cucumber with --autoformat DIR to reformat (pretty print) all of your feature files. (Aslak Hellesøy)
* New --strict option exits with an error code if there are undefined steps. (#52 Aslak Hellesøy)
* Given, When, Then methods (used in step definitions) are automatically aliased to current language. Use $KCODE='u' in env.rb if needed.
* Run cucumber --language help to see all supported languages. (Aslak Hellesøy)
* Run cucumber --language LANG help to see keywords for a given language. (Aslak Hellesøy)
* Multiline arguments (tables and """ strings) are printed in the output. (Aslak Hellesøy)
* It's no longer necessary to compile the Treetop grammar when adding a new language. Localised parser is generated at runtime. (Aslak Hellesøy)
* New --guess option tries to guess the best step definition match instead of raising Cucumber::Multiple. (Jake Howerton)

### Removed features
* "GivenScenario" is gone. Instead you can call Steps from Step Definitions, or use the new Background feature (#153)
* "More Examples" is gone. "Scenario" + "More Examples" is no longer supported. Use "Scenario Outline" + "Examples" instead.
* Pure Ruby features are no longer supported.
* Remove --color option in autotest. Can be added manually in cucumber.yml (#215 Jean-Michel Garnier)

## 0.1.16.4

Bugfix release.

IMPORTANT NOTE FOR RAILS USERS.
The template used to generate your features/support/env.rb has changed. You have to apply a minor change
manually for existing Rails projects when you upgrade to this version. Change this:

    require 'webrat/rspec-rails'

to this:

    require 'webrat/core/matchers'

### New features
* Finnish translation (Tero Tilus)
* Use Webrat's #contain matcher in generated "I should (not) see" step definitions (Bryan Helmkamp)

== Bugfixes
* Escaped quotes - \" - inside multiline strings will be unescaped.
* Flush output in HTML formatter since JRuby doesnt do it automatically (Diego Carrion)
* Better handling of ARGV (#169 David Chelimsky, Ben Mabey)
* Compatibility with ruby-debug (do ARGV.dup in bin/cucumber so it can restart ruby with same args) (Aslak Hellesøy)

## [v0.1.16](https://github.com/cucumber/cucumber/compare/v0.1.15...v0.1.16)

This is a small bugfix release. The most notable improvement is compatibility with Webrat 0.4. Rails/Webrat users should
upgrade both Cucumber and Webrat gems.

### New features
* Allow argument placeholders in step tables and multiline comments (#121 Joseph Wilk)
* Scenario Outline can be followed by several named Examples sections (#123 Aslak Hellesøy)
* Add the #binary= method back to the Rake task. It is needed by merb_cucumber for running the features of a merb app with it's bundled gems. (Thomas Marek)
* Added a /^When I go to (.+)$/ step definition to webrat_steps.rb and a simple page name to path mapping method (Bryan Helmkamp)

### Bugfixes
* Fix to run single scenarios when the line number specified doesn't correspond to a step (i.e. blank lines or rows) (#160 Luismi Cavallé)

### Removed features

## [v0.1.15](https://github.com/cucumber/cucumber/compare/v0.1.14...v0.1.15)

Bugfix release

### New features
* 한국어! (Korean!) (John Hwang)

### Bugfixes
* --dry-run skips running before/after/steps (#147 Ian Dees)
* Fix a minor bug in the console formatter's summary (David Chelimsky)
* Better quoting of Scenario names in Autotest (Peter Jaros)
* Added some small workarounds for unicode handling on Windows (Aslak Hellesøy)

## [v0.1.14](https://github.com/cucumber/cucumber/compare/v0.1.13...v0.1.14)

This is the first release of Cucumber that runs on Ruby 1.9. There are still some encoding-related issues
with Arabic (ar), Japanese (ja) and Simplified Chinese (zh-CN). Patches are welcome. Other than that -
a couple of minor bug fixes and polishing.

### New features
* Pretty formatter shows number of scenarios (#139 Joseph Wilk)
* Rudimentary support for Ruby 1.9. Now it's ok to file Ruby 1.9-related bugs.

### Bugfixes
* Fixed "No such file or directory -- cucumber (LoadError)" bug with AutoTest (Aslak Hellesøy)
* Fixed `load_missing_constant': uninitialized constant Dispatcher error with Rails (Aslak Hellesøy)

### Removed features
* The #binary= method is gone from the Rake task. It will always point to the binary in the current gem. (Aslak Hellesøy)

## [v0.1.13](https://github.com/cucumber/cucumber/compare/v0.1.12...v0.1.13)

It's time for some new features again. Output is now much better since you can use diffing, tweak
the output colours and get the full --backtrace if you want. Managing your support/* files became
a little easier since they are now always loaded before the step definitions. Life became easier
for Windows users in Norway (and other countries using unicode in the features). Plus several other
bug fixes.

Enjoy!

### New features
* Console output is no longer bold, but regular. Step arguments are bold instead of blold+underlined. (Aslak Hellesøy)
* Console output can be configured with CUCUMBER_COLORS in your shell. (Aslak Hellesøy)
* Added new --backtrace option to show full backtrace (Aslak Hellesøy)
* Enable RSpec's diffing automatically if RSpec is loaded (Aslak Hellesøy)
* Files in support directories are loaded before any other file (i.e. step definitions.)  (#120, Ben Mabey)
* The Rails features generator got some love and is now tested: http://github.com/aslakhellesoy/cucumber_rails (Aslak Hellesøy)
* --language is aliased to -l instead of -a (-l became available when --line was refactored) (Aslak Hellesøy)
* Scenario Outlines which through placeholders in the steps allow control of how scenario table values are used. (#57 Joseph Wilk)
* Scenario Outlines are now usable in pure ruby (Joseph Wilk)
* Add support for calling 'pending' from step definitions. (#112 Joseph Wilk)

### Bugfixes
* Make rails before filters work correctly (#122, #129 Guillermo Álvarez Fernández)
* Proper Unicode support for Windows command shells: Just require cucumber/formatter/unicode in env.rb (Aslak Hellesøy)
* Fixed disappearing "a" on Windows (#81 Aslak Hellesøy)
* Fixed a bug where row step outlines were loosing step tables. (#121 Joseph Wilk, Ben Mabey)
* The Cucumber Autotest plugin now launches JRuby if autotest is run with JRuby (Aslak Hellesøy)
* Provide helpful and non-confusing error message when specified profile is blank. (#118, Ben Mabey)
* Improve handling and error messages for malformed cucumber.yml files. (#117, Ben Mabey)
* document :x run option in command line help (#114, Aslak Hellesøy)
* Change 'visits' to 'visit' in features generator to comply with new Webrat API (Darius Roberts)

### Removed features

## [v0.1.12](https://github.com/cucumber/cucumber/compare/v0.1.11...v0.1.12)

This is the "getting serious with IronRuby release" - largely based on
"Patrick Gannon":http://www.patrickgannon.net/archive/2008/10/23/bdd-style-feature-tests-using-ironruby-and-rspeccucumber.aspx's
blog entry.

### New features
* Cucumber works with IronRuby/.NET - http://github.com/aslakhellesoy/cucumber/wikis/ironruby-and-net (Aslak Hellesøy)

### Bugfixes
* Fixed bug which was preventing coloring under Autotest (#111, Alan Larkin)

### Removed features
None

## [v0.1.11](https://github.com/cucumber/cucumber/compare/v0.1.10...v0.1.11)

Bugfix release with a couple of minor additional features to the command line options.

### New features
* Capture output from cucumber in Autotest (Alan Larkin)
* Update cucumber generator to work with latest Webrat (Bryan Helkamp)
* CUCUMBR LIKEZ 2 SPEEK WIF KATS. KTHXBAI (Aimee Daniells)
* Support for dynamically pluggable formatters (#99 Joseph Wilk)
* --verbose mode to see ruby files and feature files loaded by Cucumber (#106 Joseph Wilk)

### Bugfixes
* The jcode library is not loaded on JRuby/Rails. Workaround for http://tinyurl.com/55uu3u. (Aslak Hellesøy)
* Support including modules for class passed to --format (#109 Joseph Wilk)

### Removed features
* The cucumber gem no longer depends on the rspec gem. It must be downloaded manually if RSpec is used. (Jeff Rafter)

## [v0.1.10](https://github.com/cucumber/cucumber/compare/v0.1.9...v0.1.10)

This release mostly has smaller bugfixes. The most significant new feature is how
line numbers are specified. You can now run multiple features at specific lines numbers like this:

    cucumber foo.feature:15 bar.feature:6:45:111

This will run foo.feature at line 15 and bar.feature at line 6, 45 and 111.

### New features
* Added example showing how to use Cucumber with Test::Unit + Matchy instead of RSpec (Aslak Hellesøy)
* Yield existing world object to World block (#87 Aslak Hellesøy)
* AUTOFEATURE=tRue works (case insensitive) (Aslak Hellesøy)
* Initial support for .NET via IronRuby. (Aslak Hellesøy)
* Lithuanian translation (sauliusgrigaitis)
* New webrat step defintions to wrap the new selects_time, selects_date, and selects_datetime methods. (Ben Mabey)
* Try to load webrat gem if it's not installed as a plugin (Aslak Hellesøy)
* Support example.feature:20 or example.feature:10:20:30 syntax for running features at specific line number(s). (#88 Joseph Wilk)

### Bugfixes
* Windows - all the 'a' characters in the output have gone on strike (#81 Luis Lavena, Joseph Wilk, Aslak Hellesøy)
* Raise a nice error when encountering step definition without block (#95 Aslak Hellesøy)
* Features written using Ruby where breaking due to missing a line number (#91 Joseph Wilk)
* Directly creating a Table meant the scenario table header was never set which was causing a formatter error (#91 Joseph Wilk)

### Removed features
* $KCODE='u' is no longer done automatically. Developers should do that explicitly when needed in step definitions or env.rb.
* Step definition without a block being treated as pending (#64 Joseph Wilk)
* The --line option has been removed. Use the new file.feature:line format instead.

## [v0.1.9](https://github.com/cucumber/cucumber/compare/v0.1.8...v0.1.9)

With this release Cucumber supports 19 (!) natural languages:

* Arabic
* Chinese Simplified
* Danish
* Dutch
* Estonian
* French
* German
* Italian
* Japanese
* Malay
* Norwegian
* Polish
* Portuguese
* Romanian
* Russian
* Spanish
* Swedish
* Texan
* Welsh

Thanks a lot to everyone who has contributed translations. If you don't see your language here, please
add it: http://github.com/aslakhellesoy/cucumber/wikis/spoken-languages

Main functional changes in this release is "Autotest":http://github.com/aslakhellesoy/cucumber/wikis/autotest-integration
support and how multiline strings work in feature files:

    # In your .feature file
    Then I should see
      """
      A string
        that "indents"
      and spans
      several lines

      """

    # In your steps.rb file
    Then 'I should see' do |text|
      text.should == "A string\n  that \"indents\"\nand spans\nseveral lines\n"
    end

The triple quotes are used to define the start and end of a string, and it also defines what gets stripped away
in the inside string. If the triple quotes are indented 4 spaces, then the text within will have the 4 first
spaces removed too.

### New features
* Added --[no-]color option to force color on or off (Peter Jaros)
* Step definition without a block will be treated as pending (#64 Joseph Wilk)
* Added support for Welsh (improvements welcome) (Joseph Wilk)
* Added --quiet option to hide all development aid output when using Pretty formatter (#69 Joseph Wilk)
* Added --no-snippets option to hide snippets for pending steps when using Pretty formatter (#69 Joseph Wilk)
* Added error messages concerning cucumber.yml. (#70 Ben Mabey)
* Added Autotest support - work in progress... (Peter Jaros)
* Added new --exclude option (Bryan Helkamp)
* Added new --scenario option (Peter Jaros)
* Renamed common_webrat.rb to webrat_steps.rb (Ben Mabey, Aslak Hellesøy)
* Added new feature[:feature_path] task (Roman Gonzalez)
* Added support for Polish (Joseph Wilk)
* Support specifying multiple formatters and multiple outputs (#47 Joseph Wilk)
* Added support for Japanese. (Kakutani Shintaro)
* Added support for Texan (improvements welcome). (Aslak Hellesøy)

### Bugfixes
* Pending step snippets should escape special Regexp characters (#82 Joseph Wilk)
* Scenario without a body shouldn't show up as complete (#63 Josh Knowles)
* Fixed bug where utf-8 strings where breaking comment alighments. (#79 Joseph Wilk)
* Fixed next_column_index not resetting after large tables (#60, Barry Mitchelson)
* The HTML formatter was rendering everything twice. Cannot invoke visit_feature on formatters in executor (#72 Joseph Wilk)
* Row Scenarios need to support pending? in order for the Profile formatter to work (Joseph Wilk)
* Snippets are not shown for steps which already have a step definition (#65 Joseph Wilk)
* Prevent feature/scenario/pending step comments from containing '//' when running features by specifying a directory with a trailing '/' (Joseph Wilk)
* Scenario tables need spacing after them (#59 Joseph Wilk)
* Support running scenario table rows when using --line argument (#55 Joseph Wilk)
* Don't load cucumber.yml unless it exists (Aslak Hellesøy)
* Fixing bug where specifying line number 1 in a feature which starts with a scenario with a scenario table was raising an error (#56 Joseph Wilk)

### Removed features


## [v0.1.8](https://github.com/cucumber/cucumber/compare/v0.1.7...v0.1.8)

This release extends the support for tables. PLEASE NOTE THAT TABLES ARE STILL EXPERIMENTAL.
In previous releases it has been possible to use tables to define "more examples" of a scenario in
a FIT-style column fixture kind of way. Now you can also use tables as arguments to steps.

Tables used to define more examples after a scenario must now be prefixed. In English it looks like this:

    Feature: Addition
      In order to avoid silly mistakes
      As a math idiot
      I want to be told the sum of two numbers

      Scenario: Add two numbers
        Given I have entered 50 into the calculator
        And I have entered 70 into the calculator
        When I press add
        Then the result should be 120 on the screen

      More Examples:
        | input_1 | input_2 | button | output |
        | 20      | 30      | add    | 50     |
        | 2       | 5       | add    | 7      |
        | 0       | 40      | add    | 40     |

Languages that are not updated yet will have to use "More Examples" until we get the translations.

Tables can also be used as arguments to individual steps. In fact, steps now support a single argument
that can span several lines. This can be a table or a string.

Example:

    Given the following people exist:
      | name  | email           | phone |
      | Aslak | aslak@email.com | 123   |
      | Joe   | joe@email.com   | 234   |
      | Bryan | bryan@email.org | 456   |
    When I search for email.com
    Then I should see:
      | name  | email           | phone |
      | Aslak | aslak@email.com | 123   |
      | Joe   | joe@email.com   | 234   |
    And I should see:
      "Some text
      on several lines"

The step definitions for such multiline steps must define an extra block argument for the argument:

    Given /the following people exist:/ do |people_table|
      # people_table is of type Cucumber::Model::Table
      # See RDoc for more info
    end

    Then /I should see:/ do |string|
      # string is a plain old ruby String with leading spaces on each line removed
    end

### New features
* Added profile formatter. (#35, Joseph Wilk)
* Added support for Chinese Simplified. (Liming Lian)
* Added support for Dutch. (Sjoerd Tieleman)
* Multiline steps are now supported. (#4, Aslak Hellesøy)
* Tables used to define more examples for a scenario must be prefixed "More Examples" (see languages.yml for other languages)
* Show the file and line number for scenarios as a comment when displaying with the pretty formatter. (#40, Joseph Wilk)
* Show the file for the feature as a comment when displaying with the pretty formatter. (#40, Joseph Wilk)
* Show the feature file and line for pending steps as a comment when displaying with the pretty formatter. (#40, Joseph Wilk)

### Bugfixes
* Fixed speling errors in Spanish (Daniel Cadenas)
* ActionMailer delivery_method should not be set to test (#41, Luke Melia)
* Reverse incorrectly ordered args in webrat select step (#43, David Chelimsky)
* Support comments above the first scenario (#31, Aslak Hellesøy)
* Fixed the HTML Formatter to use actual values for FIT table headers (#30, Joseph Wilk)

### Removed features
* Removed the /^I go to (.*)$/ step from common_webrat.rb - it's not language agnostic and provides little value.

### New features
* Added new --out option to make it easier to specify output from Rake and cucumber.yml

## [v0.1.7](https://github.com/cucumber/cucumber/compare/v0.1.6...v0.1.7)

This release fixes a few bugs and adds some new features. The most notable features are:

### Calling steps from steps

Step definitions are a little bit closer to having regular method semantics.
You define them, but now you can also call them from other steps. Here is an
example:

    Given /I am logged in as an (.*) named (.*)$/ do |role, name|
      Given "I am registered as #{role}, #{name}, secret"
      When "I log in with #{name}, secret"
    end

    Given /I am registered as (.*), (.*), (.*)/ do |role, name, password|
      # (Code removed for brevity)
    end

    When /I log in with (.*), (.*)/ do |name, password|
      # (Code removed for brevity)
    end

This means that steps can be reused in other steps. The GivenScenario feature achieves a similar
effect (on the scenario level), but this feature is something we're not very happy with, mostly
because it's not parameterisable. Calling steps from steps is.

GivenScenario will still be working several releases, but the plan is to remove it completely in
the 0.3.0 release.

### Seeing where a step is defined

Prior to this release it could be hard to find out where the ruby step definition matching
a plain text step is defined. Not anymore! Cucumber will now output this:

    Scenario: Regular numbers
      Given I have entered 3 into the calculator   # features/steps/calculator_steps.rb:12
      And I have entered 2 into the calculator     # features/steps/calculator_steps.rb:12
      When I press divide                          # features/steps/calculator_steps.rb:16
      Then the result should be 1.5 on the screen  # features/steps/calculator_steps.rb:20
      And the result class should be Float         # features/steps/calculator_steps.rb:24

### Bugfixes
* Fixed a bug in the command line args being lost when using --profile (#27, Joseph Wilk)
* Fixed a bug in Webrat selects (Tim Glen)
* Fixed parsing of DOS line endings (#2, #28, Aslak Hellesøy)

### New features
* Steps can be called from other steps (#3, Bryan Helmkamp, Aslak Hellesøy)
* Added But keyword to all languages (#21, Aslak Hellesøy)
* Added --no-source option to display step definition location next to step text (#26, Joseph Wilk, Aslak Hellesøy)
* Added more Webrat steps (#25, Tim Glen)

## [v0.1.6](https://github.com/cucumber/cucumber/compare/f3292f4023a707099d02602b2bd6c4ca3cec6820...v0.1.6)

First gem release!
