#! /bin/bash


if ( [[ $TRAVIS_TEST_RESULT = 0 ]] && [[ $TRAVIS_PULL_REQUEST = "false" ]]);
then

      git config --global user.email "travis@luizalabs.com"
      git config --global user.name "Travis CI"

      # Release a prerelease version
	  #if ( [[ $TRAVIS_BRANCH = $PRE_RELEASE_BRANCH ]] );
	  #then
        #mvn deploy
	  #fi
      # Release a version
      if ( [[ $TRAVIS_BRANCH = $RELEASE_BRANCH ]] );
      then
        mvn -B release:prepare
      fi
fi
