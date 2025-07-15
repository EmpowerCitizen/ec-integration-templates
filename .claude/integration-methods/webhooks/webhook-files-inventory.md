# Webhook Files Inventory

**File Location**: `/home/ec-xps/EC-Development/.claude/integration-methods/webhooks/webhook-files-inventory.md`  
**Created**: July 11, 2025  
**Purpose**: Complete inventory of all webhook-related files and implementations

## File Count Summary
- Total webhook files found: 42+ (excluding node_modules)
- Langfuse webhook automation: 8 files
- n8n webhook implementations: 2 files
- Google Cloud webhook triggers: 2 files
- Client project webhook integrations: 30+ files

## Implementation Files

### Langfuse Webhook Automation
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/packages/shared/src/domain/webhooks.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/packages/shared/src/server/automations/webhooks.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/packages/shared/src/server/redis/webhookQueue.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/ee/features/billing/server/stripeWebhookApiHandler.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/features/automations/components/WebhookButton.tsx`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/features/automations/components/WebhookSecretRender.tsx`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/features/automations/components/actions/WebhookActionForm.tsx`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/features/automations/components/actions/WebhookActionHandler.tsx`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/features/automations/server/webhookHelpers.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/web/src/features/slack/server/slack-webhook.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v2.0/langfuse-docker/worker/src/__tests__/webhooks.test.ts`

### n8n Webhook Implementations
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/create-simple-webhook.js`
- `/home/ec-xps/EC-Development/Active-Projects/Company-Projects/EC-AI-Agent-Hub-v3.0/webhook-trigger-test.js`

### Google Cloud Webhook Triggers
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/surface/builds/triggers/create/webhook.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/surface/builds/triggers/update/webhook.py`

## Client Project Webhook Integrations

### Sanity CMS Webhook Integration (Client Projects)
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/01-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.cjs`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/01-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.cjs.js`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/01-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.cjs.map`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/01-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.d.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/01-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.js`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/01-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.js.map`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/02-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.cjs`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/02-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.cjs.map`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/02-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.d.cts`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/02-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.d.ts`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/02-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.js`
- `/home/ec-xps/EC-Development/Active-Projects/Client-Work/02-Client-Projects/demo-client/node_modules/next-sanity/dist/webhook.js.map`

### UI Component Libraries (Webhook Icons)
- `/home/ec-xps/EC-Development/Applications/claudia/node_modules/lucide-react/dist/esm/icons/webhook-off.js`
- `/home/ec-xps/EC-Development/Applications/claudia/node_modules/lucide-react/dist/esm/icons/webhook-off.js.map`
- `/home/ec-xps/EC-Development/Applications/claudia/node_modules/lucide-react/dist/esm/icons/webhook.js`
- `/home/ec-xps/EC-Development/Applications/claudia/node_modules/lucide-react/dist/esm/icons/webhook.js.map`

## Kubernetes Webhook Configuration
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/admissionregistration_v1beta1_webhook_client_config.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/apiextensions_v1beta1_webhook_client_config.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1alpha1_webhook.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1alpha1_webhook_client_config.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1alpha1_webhook_throttle_config.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1beta1_mutating_webhook_configuration.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1beta1_mutating_webhook_configuration_list.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1beta1_validating_webhook_configuration.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1beta1_validating_webhook_configuration_list.py`
- `/home/ec-xps/EC-Development/google-cloud-sdk/lib/third_party/kubernetes/client/models/v1beta1_webhook.py`

## Integration Relationships

### Related Integration Methods
- **n8n**: Webhook triggers and event handling
- **API**: Webhook endpoints and REST API integration
- **MCP**: MCP servers handling webhook events  
- **CLI**: Command-line webhook testing and management

### Webhook Patterns
1. **Event-Driven Architecture**: Langfuse automation webhooks
2. **Content Management**: Sanity CMS webhook integration
3. **Build Automation**: Google Cloud webhook triggers
4. **Infrastructure**: Kubernetes admission webhooks
5. **Workflow Automation**: n8n webhook triggers

---

*Last Updated: July 11, 2025*  
*Part of the Integration Methods documentation suite*