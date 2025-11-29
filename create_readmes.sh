#!/usr/bin/env bash
set -euo pipefail

# --- CONFIGURE THESE ---
YT_PLAYLIST_URL="https://www.youtube.com/playlist?list=REPLACE_WITH_YOUR_PLAYLIST"   # change this
AUTHOR_NAME="Rakesh Pandey"
PROJECT_ROOT="$(pwd)"
REPO_NAME="google-cloud-foundational-learning-series-by-zero2cloud"
# -----------------------

echo "Creating repo skeleton in ${PROJECT_ROOT}"

declare -a DAYS=(
  "day-01-confused-about-gcp-and-devops"
  "day-02-deploy-first-web-app-compute-engine"
  "day-03-vpc-network-basics"
  "day-04-vpc-peering-vs-shared-vpc"
  "day-05-google-cloud-load-balancer"
  "day-06-instance-groups"
  "day-07-google-cloud-iam"
  "day-08-google-cloud-storage"
)

# Helper: write file only if not exists (so safe to re-run)
write_if_missing() {
  local file_path="$1"
  local content="$2"
  if [ -f "$file_path" ]; then
    echo "Skipping existing: $file_path"
  else
    echo "Writing: $file_path"
    printf "%s\n" "$content" > "$file_path"
  fi
}

# Top-level README
TOP_README="# ${REPO_NAME}

Companion repo for the YouTube playlist: ${YT_PLAYLIST_URL}

This repository contains day-by-day notes, demo scripts and diagrams for the \"Google Cloud Foundational Learning Series — Zero 2 Cloud\".

Folders:
\$(printf \"%s\n\" \"${DAYS[@]}\")
"

write_if_missing "${PROJECT_ROOT}/README.md" "$TOP_README"

# Create common files
write_if_missing "${PROJECT_ROOT}/LICENSE" "MIT License - replace with the license you prefer."
write_if_missing "${PROJECT_ROOT}/CONTRIBUTING.md" "Contributions welcome. Create PRs against the main branch."

# Per-day README templates
for i in "${!DAYS[@]}"; do
  day="${DAYS[$i]}"
  mkdir -p "${PROJECT_ROOT}/${day}/demo-scripts"
  mkdir -p "${PROJECT_ROOT}/${day}/diagrams"

  # Prepare short title and summary per folder
  case $i in
    0)
      title="Confused About GCP & DevOps? Start Your Career Today!"
      summary="Intro to GCP and how to start your DevOps career. High-level cloud concepts and learning path."
      ;;
    1)
      title="Deploy Your First Web App on Google Cloud | Compute Engine + Persistent Disk"
      summary="Create a VM, attach persistent disk and deploy a simple web app (Node/NGINX)."
      ;;
    2)
      title="VPC Network Basics in Google Cloud"
      summary="VPC fundamentals: subnets, routes, firewalls and a sample topology."
      ;;
    3)
      title="VPC Peering vs Shared VPC Explained"
      summary="When to use VPC Peering vs Shared VPC, pros/cons and demo steps."
      ;;
    4)
      title="Google Cloud Load Balancer Explained"
      summary="Application vs Network load balancer, backend services and a hands-on demo."
      ;;
    5)
      title="Instance Groups in Google Cloud (Managed vs Unmanaged)"
      summary="Instance templates, MIG autoscaling demo and use-cases for unmanaged groups."
      ;;
    6)
      title="Google Cloud IAM Full Guide (2025)"
      summary="Roles, service accounts, least privilege, and demo for granting roles and creating service accounts."
      ;;
    7)
      title="Google Cloud Storage Full Guide (2025)"
      summary="Buckets, storage classes, Uniform vs Fine-grained access, lifecycle rules, pricing basics and demo using gsutil."
      ;;
    *)
      title="Day $(($i+1))"
      summary="Summary for ${title}"
      ;;
  esac

  readme_path="${PROJECT_ROOT}/${day}/README.md"

  readme_content="---
# ${title}

**YouTube video:** [Video Link Here]

**Short summary (2–3 lines):**
${summary}

---

## What you will learn
- Key concepts covered in the video
- Demo reproduction steps
- Tips and best practices

---

## Demo / Repro steps
1. Prereqs: gcloud SDK installed, a GCP project, billing enabled.
2. Copy/paste commands below and replace YOUR_PROJECT_ID.

\`\`\`bash
# Sample placeholder commands (replace as required)
gcloud auth login
gcloud config set project YOUR_PROJECT_ID
\`\`\`

---

## Files in this folder
- demo-scripts/  — commands and example scripts used in the video
- diagrams/      — placeholder for PNG/SVG diagrams

---

## Notes / Extra reading
- Playlist: ${YT_PLAYLIST_URL}
- More: https://cloud.google.com/docs

---

## Author
${AUTHOR_NAME}
"

  write_if_missing "$readme_path" "$readme_content"

done

# Add Day 08 specific demo files (gsutil and lifecycle)
day8="${PROJECT_ROOT}/day-08-google-cloud-storage"
write_if_missing "${day8}/demo-scripts/gsutil-commands.sh" "#!/usr/bin/env bash
# Example gsutil commands - replace YOUR_BUCKET and paths
gcloud config set project YOUR_PROJECT_ID
gcloud auth login
# Create bucket with uniform access
gcloud storage buckets create gs://YOUR_BUCKET --location=asia-south1 --uniform-bucket-level-access
# Upload a file
gsutil cp sample.jpg gs://YOUR_BUCKET/
# List objects
gsutil ls gs://YOUR_BUCKET
"
chmod +x "${day8}/demo-scripts/gsutil-commands.sh" || true

write_if_missing "${day8}/demo-scripts/lifecycle-rule.json" "{
  \"rule\": [
    {
      \"action\": {\"type\": \"SetStorageClass\", \"storageClass\": \"NEARLINE\"},
      \"condition\": {\"age\": 30}
    },
    {
      \"action\": {\"type\": \"Delete\"},
      \"condition\": {\"age\": 180}
    }
  ]
}
"
