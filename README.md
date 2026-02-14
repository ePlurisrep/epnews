# epnews
unified gov data

## Development

```bash
npm install
npm run dev
```

## Google Cloud Setup

This project can be deployed to Google Cloud Platform. To authenticate with Google Cloud:

### Prerequisites
- Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

### Authentication
Run the setup script to authenticate with Google Cloud:

```bash
chmod +x setup-gcloud.sh
./setup-gcloud.sh
```

Alternatively, run it directly with bash:

```bash
bash setup-gcloud.sh
```

Or manually run:

```bash
gcloud auth login
```

After authentication, set your project:

```bash
gcloud config set project YOUR_PROJECT_ID
```

## Deployment

To deploy to Google Cloud Platform, ensure you're authenticated and have set your project, then use the appropriate gcloud deployment command for your service (App Engine, Cloud Run, etc.).
