import platform
import subprocess

def get_arp_table():
    system = platform.system()

    if system == "Windows":
        # Windows command
        command = "arp -a"
    elif system in ["Linux", "Darwin"]:
        # Linux/macOS command
        command = "arp -n"
    else:
        print(f"Unsupported operating system: {system}")
        return []

    try:
        # Run the command and capture the output
        result = subprocess.check_output(command, shell=True, text=True)
        return result.splitlines()
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}")
        return []


def print_arp_table(arp_table):
    print("ARP Table:")
    for entry in arp_table:
        print(entry)
    print("--------------------")


if __name__ == "__main__":
    arp_table = get_arp_table()
    if arp_table:
        print_arp_table(arp_table)
