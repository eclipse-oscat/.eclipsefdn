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
      webhooks: [
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat/327900/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-webhook-secret",
        },
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-en/327901/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-en-webhook-secret",
        },
      ],
    },
    orgs.newRepo('oscat-basic-docs') {
      description: "OSCAT Basic Library Documentation (ReadTheDocs)",
      homepage: "https://oscat-basic.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
      webhooks: [
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-basic/327898/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-basic-webhook-secret",
        },
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-basic-en/327899/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-basic-en-webhook-secret",
        },
      ],
    },
    orgs.newRepo('oscat-network-docs') {
      description: "OSCAT Network Library Documentation (ReadTheDocs)",
      homepage: "https://oscat-network.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
      webhooks: [
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-network/327905/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-network-webhook-secret",
        },
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-network-en/327904/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-network-en-webhook-secret",
        },
      ],
    },
    orgs.newRepo('oscat-building-docs') {
      description: "OSCAT Building Library Documentation (ReadTheDocs)",
      homepage: "https://oscat-building.readthedocs.io",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
      webhooks: [
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-building/327902/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-building-webhook-secret",
        },
        orgs.newRepoWebhook('https://app.readthedocs.org/api/v2/webhook/oscat-building-en/327903/') {
          content_type: "json",
          secret: "pass:bots/iot.oscat/readthedocs.org/oscat-building-en-webhook-secret",
        },
      ],
    },
  ],
}
