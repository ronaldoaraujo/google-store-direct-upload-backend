# README

This README describe the steps are necessary to get the
application up and running.

Things you may want to cover:

### Configuration
- put your credentials in config folder, named for gcloud-keyfile.json
- execute `gsutil cors set` with `config/bucket-cors.json` and `gs://your-bucket`
```sh
gsutil cors set config/bucket-cors.json gs://ronaldo-teste
```
- run
```sh
bundle exec rails
```
