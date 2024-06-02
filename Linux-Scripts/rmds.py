# --------------------------------------------------------------------------
# This Python script prompts the user to enter a directory where they want to execute a command.
# It then offers to delete the ._* and .DS_Store files within the specified directory upon user confirmation.
# --------------------------------------------------------------------------

import os

# Ask the user for the directory in which they want to execute the command
print("")

directory = input("Please enter the folder in which you want to execute the command: ")

print("")

# Confirm with the user if they want to delete the ._* and .DS_Store files
confirmation = input("Are you sure you want to delete the ._* and .DS_Store files? (yes/no): ")

print("")

if confirmation.lower() == "yes":
    # Build and execute the find and rm command
    find_command = f"sudo find {directory} -type f -name '._*' -exec rm {{}} \\; && sudo find {directory} -type f -name '.DS_Store' -exec rm {{}} \\;"
    os.system(find_command)
    print("._* and .DS_Store files successfully deleted.")
else:
    print("The command was not executed. You have selected 'no'.")
