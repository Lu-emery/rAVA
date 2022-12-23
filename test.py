from bot import run_test_from_file
import sys

def main():
    if len(sys.argv) < 2:
        file_name = "script.txt"
    else:
        file_name = sys.argv[1]
    run_test_from_file(file_name)
    
if __name__ == "__main__":
    main()