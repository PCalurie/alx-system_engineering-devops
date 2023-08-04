# 0x05-processes_and_signals
- `pgrep` searches for a process whose command-line arguments or full command match the pattern
- `-f` option tells `pgrep` to perform a full match.
- The `kill` command is used to send signals to processes, and by default, it sends the `TERM` signal (equivalent to signal number 15) to gracefully terminate the process.

In the context of software or service management, the terms "start," "stop," and "restart" are commonly used to control the lifecycle of a running process or service. These commands are often used when managing daemons, services, or applications in a Unix-like operating system. Here's what each command typically does:

Start:

- The `"start"` command initiates the execution of a process or service that has been configured to run in the background. It begins the execution of the specified program and allows it to perform its designated tasks.
When you start a service, it's usually launched as a separate process, often referred to as a daemon. This process runs independently of the terminal session from which it was started.
Stop:

- The `"stop"` command halts the execution of a running process or service. It sends a signal to the process, usually requesting it to terminate gracefully. The process should perform any necessary cleanup tasks before shutting down.
Stopping a service involves terminating its background process, effectively ending its operation.
Restart:

- The `"restart"` command combines the "stop" and "start" commands. It first stops the running process or service and then immediately starts it again. This is often done to apply configuration changes or to reset the service.
Restarting a service can help ensure that any configuration updates take effect and that the service operates with the latest settings.
When managing processes or services, using these commands allows for convenient control and maintenance. For example, if you have a web server running as a service and you want to update its configuration, you might follow these steps:

	- `Stop`: Use the "stop" command to gracefully stop the web server, allowing it to complete any ongoing tasks and release resources.

- Modify Configuration: Make the necessary changes to the configuration file of the web server:

	- `Start`: Use the "start" command to launch the web server again with the updated configuration.

In some systems, a "restart" command can be used as a shortcut for the "stop" followed by "start" sequence, streamlining the process.

It's important to note that the specific implementation of these commands might vary based on the software or service you're managing and the operating system you're using. Always refer to the documentation for the software you're working with for precise instructions on using these commands.

- The `STOP` signal instructs the operating system to stop a process for later resumption. This is one of two signals, along with KILL that cannot be intercepted, ignored, or handled by the process itself.

- The `TRAP` signal is sent to a process when a condition arises that a debugger is tracing — for example, when a particular function is executed, or when a particular variable changes value.

- `Zombie` processes occur when a child process has terminated but its exit status has not yet been read by its parent.

- Zombie processes will continue to exist until their exit status is read by the parent process using the `wait()` or `waitpid()` system calls.
