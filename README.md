# grunt-peach [![David dependency status][davidBadge]][davidLink]

> Search and replace strings in SQL dumps, including PHP serialized strings.
> Unofficial grunt task for [Peach by Pete Saia](https://github.com/petesaia/Peach)

[![NPM](https://nodei.co/npm/grunt-peach.png?downloads=true&downloadRank=true&stars=true)](https://nodei.co/npm/grunt-peach/)

## Getting Started

This plugin requires Grunt `~0.4.0`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out
the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains
how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as
install and use Grunt plugins. Once you're familiar with that process, you may
install this plugin with this command:

```bash
npm install --save-dev grunt-peach
```

Once the plugin has been installed, it may be enabled inside your Gruntfile
with this line of JavaScript:

```javascript
grunt.loadNpmTasks('grunt-peach');
```

## Peach task

_Run this task with the `grunt peach` command._

Task targets, files and options may be specified according to the grunt
[Configuring tasks](http://gruntjs.com/configuring-tasks) guide.

### Options

#### log

Type: `Boolean`
Default value: `false`

Set `log` to `true` to log the output SQL to console.

#### force

Type: `Boolean`
Default value: `true`

Set `force` to `true` to report errors but not fail the task.

### Usage examples

```javascript
grunt.initConfig({
  peach: {
    dev: {
      options: {
        force: true
      },
      src:  'input.sql',
      dest: 'output.sql',
      from: 'http://my-development-server.dev',
      to:   'http://the-production-server.com'
    }
  }
});
```

## Release History

### 2016-02-04 - v1.0.0

- Update Peach dependency repo since it was republished

### 2015-02-27 - v0.1.0

- Move output to grunt task instead of migrate.js exported module
- Use peach as NPM module via git
- Update peach to latest version
- Rewrite task into coffee
- Introduce `log` option
- Update readme options and add dependency badges

### 2013-05-24 - v0.0.3

- Fix writing to dest file

### 2013-05-24 - v0.0.1

- Initial release



[davidBadge]:       https://david-dm.org/davidosomething/grunt-peach.png?theme=shields.io
[davidLink]:        https://david-dm.org/davidosomething/grunt-peach#info=dependencies
