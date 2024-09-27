import os
from restack_sdk_cloud import RestackCloud

async def main():
    # Initialize the RestackCloud client with the SDK token from environment variables
    restack_cloud_client = RestackCloud(os.getenv('RESTACK_SDK_TOKEN'))

    # Define the backend application configuration
    metabase_app = {
        'name': 'metabase',
        'dockerFilePath': 'Dockerfile',

        # This deploys a pre-configured Metabase instance with a SQL database
        'productName': 'Metabase',
    }
    await restack_cloud_client.stack({
        'name': 'Metabase stack',
        'previewEnabled': False,
        'applications': [metabase_app],
    })

    # Deploy the stack
    await restack_cloud_client.up()

# Run the main function
if __name__ == "__main__":
    import asyncio
    asyncio.run(main())
