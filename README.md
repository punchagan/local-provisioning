# local-provisioning
Scripts to help automate setup of my personal development machine

## Notes

- Each change should be idempotent (sort of)

  Updates are fine, destructive changes are NOT!

  Updating git repos is allowed, for instance, but any locally made changes
  shouldn't be over-written by running this script.

- Use `roles` so that different aspects may be tested separately.

  Newly created roles alone can be activated and tested, instead of trying to
  test the whole setup.

- External `git` repos should be shallow cloned

  Repositories where it is unlikely that I will make any code changes, should be
  shallow cloned.
