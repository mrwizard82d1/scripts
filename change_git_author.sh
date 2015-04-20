git filter-branch --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "lawrence.jones@openlink.com" ];
        then
                GIT_AUTHOR_NAME="Larry Jones";
                GIT_AUTHOR_EMAIL="mrwizard82d1@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD