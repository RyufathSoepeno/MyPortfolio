
#!/bin/bash

# Using ps to list proccesses, we can  pipe the output to wc to count lines

num_processes=$(ps -u $(whoami) | wc -1)


# Then we use pre-incrementation operation to excluse any header line from the count

num_processes=$((num_processes - 1))


# Now, we print it

echo "Number of current processes for your account: $num_processes"
