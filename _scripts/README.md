# Program Content Scripts

These scripts take the spreadsheets provided by the Program Committee and convert them
to the YAML and Markdown files expected by Jekyll to add the talks, posters, workshops,
and speaker info to the program.

## Usage:

Each script expects data to look like the CSV files in the `examples` directory, and
expects to be executed with `bundle exec` in the parent directory, e.g.:

```sh
bundle exec _scripts/workshops.rb path/to/workshops.csv
```
