# ionic-firebase-pipeline
ionic Docker Image containing Firebase CLI for deployments to Firebase

## GitLab CI Sample

`.gitlab-ci.yml`

```yaml
image: tkikuchi/ionic-firebase-pipeline

stages:
  - deploy

deploy-prod:
  stage: deploy
  only:
    - master
  script:
    - ionic --version
    - firebase --version
    - firebase use "$PROJECT_ID" --token "$FIREBASE_TOKEN"
    - firebase deploy --only hosting -m "Pipe $CI_PIPELINE_ID Build $CI_BUILD_ID" --token "$FIREBASE_TOKEN"
```

## Bitbucket Pipeline Sample

`bibucket-pipelines.yml`

```yaml
image: tkikuchi/ionic-firebase-pipeline

pipelines:
  branches:
    master:
      - step:
          caches:
            - node
          script:
            - ionic --version
            - firebase --version
            - firebase use "$PROJECT_ID" --token "$FIREBASE_TOKEN"
            - firebase deploy --only hosting -m "Build $BITBUCKET_BUILD_NUMBER" --token "$FIREBASE_TOKEN"

# vi: set et si sts=2 sw=2 :

```
