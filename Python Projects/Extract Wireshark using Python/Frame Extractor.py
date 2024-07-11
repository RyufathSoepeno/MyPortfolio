# For this project, I would like to use an OO Programming method

class FrameExtractor:
    def __init__(self, filename):
        self.filename = filename
        self.frames = []
        self.ipv4_count = 0
        self.udp_count = 0
        self.tcp_count = 0

    def read_file(self):
        # To extract utf-8 files
        try:
            with open(self.filename, "r", encoding="utf-8") as file:
                lines = file.readlines()
                self.extract_frames(lines)
        except FileNotFoundError:
            print(f"Error: File '{self.filename}' not found.")

    def extract_frames(self, lines):
        frame_data = []
        for line in lines:
            if "Frame" in line:
                if frame_data:
                    self.frames.append(frame_data)
                frame_data = [line.strip()]
            else:
                frame_data.append(line.strip())
                if "Type: IPv4 (0x0800)" in line:  # Check for IPv4 frame
                    self.ipv4_count += 1
                elif "Type: UDP (0x11)" in line:  # Check for UDP frame
                    self.udp_count += 1
                elif "Type: TCP (0x06)" in line:  # Check for TCP frame
                    self.tcp_count += 1
        if frame_data:
            self.frames.append(frame_data)

    def display_frames(self):
        for i, frame_data in enumerate(self.frames, start=1):
            frame_number = frame_data[0].split(": ")[1][:-1]
            src_address = self.extract_address(frame_data, "Src:")
            dest_address = self.extract_address(frame_data, "Dst:")
            frame_type = self.extract_frame_type(frame_data)
            print(f"Frame {i} , Src: {src_address} , Des: {dest_address} , Type: {frame_type}")

    # To effectively extract MAC adresses as needed, arrays are needed
    def extract_address(self, frame_data, address_type):
        for line in frame_data:
            if address_type in line:
                address = line.split(": ")[1].strip()
                return address.split("(")[-1].split(")")[0]

    def extract_frame_type(self, frame_data):
        for line in frame_data:
            if "Type:" in line:
                return line.split(": ")[1].strip()

    def get_frame_statistics(self):
        total_frames = len(self.frames)
        return total_frames, self.ipv4_count, self.udp_count, self.tcp_count


# To make the code not hard-coded, I convert it to input functionality
if __name__ == "__main__":
    while True:
        input_file = input("Enter the filename and its file type (press 'q' to exit): ")
        if input_file.lower() == 'q':
            break
        frame_extractor = FrameExtractor(input_file)
        frame_extractor.read_file()
        frame_extractor.display_frames()

        # Get and display frame statistics
        total, ipv4, udp, tcp = frame_extractor.get_frame_statistics()
        print(f"\nTotal Frames: {total} \nIPv4 Frames: {ipv4}, UDP Frames: {udp}, TCP Frames: {tcp}\n")
