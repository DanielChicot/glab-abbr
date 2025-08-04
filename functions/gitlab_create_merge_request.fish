function gitlab_create_merge_request -a ticket description


    argparse w/worktree -- $argv
    or return

    if test (count $argv) -ne 2
        echo Usage: (status function) [-w] ticket description >&2
        return 1
    end

    glab mr create \
        --assignee Daniel.Chicot \
        --source-branch feature/$argv[1] \
        --create-source-branch \
        --target-branch (git_main_branch) \
        --squash-before-merge \
        --draft \
        --remove-source-branch \
        --title "$argv[1]: $argv[2]" \
        --yes

    if test $status -eq 0
        git fetch --all --prune
    end

    if test $status -eq 0
        if set -q _flag_w
            git worktree add --guess-remote ./worktrees/$argv[1] $argv[1]
        end
    end
end
