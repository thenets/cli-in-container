# cli-in-container

This is a simple example of how to create a CLI that creates commands to invoke itself in a container.

## Use-case

- It's not possible to install the CLI on the host machine
- Must be east-to-use


## Process call order

1. (Host) User invokes the `run.sh` script, which invoke container's `/app/wrapper.sh` script
2. (Container) `/app/wrapper.sh` returns the full command, including speciall args like volume mapping, environment variables, etc.
3. (Host) The `run.sh` script executes the full command, which invokes the container's `/app/cli.sh` script
4. (Container) `/app/cli.sh` executes the command
