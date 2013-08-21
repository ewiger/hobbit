import config
import novaclient.client
#import novaclient.v1_1.client


nova = novaclient.client.Client(
    2,
    config.USERNAME,
    config.PASSWORD,
    project_id=config.TENANT_ID,
    auth_url=config.AUTH_URL,
    insecure=True,
    http_log_debug=True,
)
#print nova.verify_cert 
nova.set_management_url('https://hobbes.gc3.uzh.ch/')
nova.authenticate()
print nova.servers.list()
