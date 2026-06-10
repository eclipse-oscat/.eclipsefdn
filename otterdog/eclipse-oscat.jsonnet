local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.oscat', 'eclipse-oscat') {
  settings+: {
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_create_teams: false,
    members_can_delete_repositories: false,
    name: "Eclipse OSCAT",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('.github'),
    orgs.newRepo('oscat-docs') {
      description: "OSCAT Landing Page and Main Documentation (ReadTheDocs)",
      homepage: "https://oscat.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
    },
    orgs.newRepo('oscat-basic-docs') {
      description: "OSCAT Basic Library Documentation (ReadTheDocs)",
      homepage: "https://oscat-basic.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
    },
    orgs.newRepo('oscat-network-docs') {
      description: "OSCAT Network Library Documentation (ReadTheDocs)",
      homepage: "https://oscat-network.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
    },
    orgs.newRepo('oscat-building-docs') {
      description: "OSCAT Building Library Documentation (ReadTheDocs)",
      homepage: "https://oscat-building.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
    },
  ],
}
