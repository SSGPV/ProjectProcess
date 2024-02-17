import os
import subprocess
import sys

def main():
    script_name = "build.bat" if os.name == 'nt' else "./build.sh"
    
    try:
        # Execute the appropriate build script
        print(f"Running build script: {script_name}")
        result = subprocess.run(script_name, shell=True, check=True)
        print("Build completed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Build failed with error: {e}", file=sys.stderr)
        sys.exit(e.returncode)

if __name__ == "__main__":
    main()

