#!/bin/bash
# This script sets up a series of nested directories based on a predefined associative array.

set -euo pipefail  # Exit on error, unset variables, and fail on pipe errors.

# Associative array where keys are main directories and values are subdirectories.
declare -A directories=(
    ["University Life"]="UVU_Resources|Student_Guides|Greek_Life_and_Associations"
    ["Job Search"]="Resumes|Interview_Prep|Networking"
    ["Gardening"]="Plans|Techniques|Certifications"
    ["Wellness"]="Nutrition|Home_&_Appliances|Mental_Health|Fitness"
    ["AI Prompts"]="Templates|Learning_Resources|Ethics"
    ["Programming"]="Tutorials|Best_Practices|Industry_News"
    ["Security & Prepping"]="Home_Security|Disaster_Preparedness|Secure_Relocation_Tips"
    ["IT & Cybersecurity"]="Tutorials|Industry_News|Certifications"
    ["Privacy"]="Tools|Best_Practices|Awareness"
    ["Technology & Innovation"]="3D_Printing|Drones|Brain_Computer_Interfaces"
    ["Side Gigs"]="Fingerprinting|Notary|Freelancing|Photography"
    ["Product Reviews"]="Electronics|Home_&_Garden|Gadgets|Software"
    ["Tech Reviews"]="Software|Hardware|Gadgets"
    ["General Interest"]="Tech_Reviews|Book_Summaries|Hobby_Projects"
    ["Professional Development"]="Skill_Building|Career_Paths|Networking_Events"
    ["Anti-Poverty Resources"]="Local_Programs|Student_Aid|Financial_Guidance"
)

# Loop through the main directories defined in the associative array.
for dir in "${!directories[@]}"; do
    # Read the subdirectories into an array, splitting them by the pipe character.
    IFS='|' read -r -a subdirs <<< "${directories[$dir]}"
    # Loop through each subdirectory to create the nested structure.
    for subdir in "${subdirs[@]}"; do
        # Replace underscores with spaces for the actual directory names.
        subdir="${subdir//_/ }"
        # Create the directory, and report an error if it fails.
        mkdir -p "./$dir/$subdir" || { echo "Failed to create directory: $dir/$subdir" >&2; exit 1; }
    done
done

# Final confirmation message.
echo "Directory structure created successfully."
