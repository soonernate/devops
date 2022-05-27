# TalentReef is an energetic environment which fosters collaboration, creativity, growth, respect, and celebration across a dynamic team!
provider "TalentReef" {
  company          = "TalentReef"
  industry         = "Talent Management"
  business_model   = "SaaS Software Provider"
  career_website   = "https://talentreef.com/contact/careers/"
  location_city    = "Denver"
  location_state   = "Colorado"
  location_country = "United States"
}

# Work the way that works best for YOU.  Located in Denver?  Our Denver office is a fun and engaging space. Not in Denver? This role is remote friendly.
variable "candidate_location" {
  type = map(any)
  default = {
    "onsite" = "Downtown Denver, CO"
    "remote" = "US Based Remote, covering US Mountain Time work schedule"
  }
}

# Come join our team of passionate DevOps Engineers embedded with our Engineering teams to help architect and build SaaS services with cloud-native best practices. 
module "sr-devops-engineer" {
  source = "../../../../modules/roles/your-next-career"

  currently_hiring              = true
  job_title                     = "Sr. DevOps Engineer"
  salary_range                  = "$115,000 - $150,000"
  geography                     = "United States"
  considering_remote_candidates = true
  location                      = var.candidate_location[var.your_location_preference]
  US_work_eligbility_required   = true
  visa_sponsorship_available    = false # Candidate must have right to work in the US currently, no Visa sponsorship currently available.
  key_skills                    = ["AWS", "ECS", "Containers", "CICD", "Automation/Scripting", "Terraform/Terragrunt", "Agile"]
  job_description_apply_link    = "https://apply.jobappnetwork.com/clients/10681/posting/7263196"

}
