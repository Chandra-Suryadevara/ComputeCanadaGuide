#!/bin/bash
#SBATCH --account=def-name         # Account to charge for the job
#SBATCH --nodes=1                    # Number of nodes to allocate
#SBATCH --gpus-per-node=p100:4       # Number of GPUs per node
#SBATCH --cpus-per-task=24           # Number of CPUs per task
#SBATCH --mem=0                      # Amount of memory (0 means no limit)
#SBATCH --time=1-00:00               # Maximum runtime (days-hours:minutes)
#SBATCH --mail-user=<your-email>     # Email address for notifications
#SBATCH --mail-type=ALL              # Types of email notifications (ALL: BEGIN, END, FAIL)

# Load necessary modules
module load StdEnv/2020
module load python/3.10.2
module load gcc/11.3.0
module load cuda/11.8
module load cudacore/.11.8.0
module load cudnn/8.6.0.163

# Set up environment and run the script
SOURCEDIR=/path/to/your/environment
source $SOURCEDIR/bin/activate
python /path/to/your/script/train.py