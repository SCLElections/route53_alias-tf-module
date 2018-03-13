# Route 53 Alias Terraform Module
This modules creates AWS Route 53 alias records.

## Example

```hcl-terraform
module "example" {
  source        = "git@github.com:SCLElections/route53_alias-tf-module"
  zone-id       = "ZONEID123"
  alias-zone-id = "ZONEID456"
  name          = "example.cambridgeanalytica.org"
  alias-name    = "example1.cambridgeanalytica.org"
}

```

## Input Variables
* **zone-id** - **[string]** - (required) - Zone id for the r53 record.
* **name** - **[string]** - (required) - Fully qualified domain name for the record.
* **alias-name** - **[string]** - (required) - Full qualified domain name for the alias record.
* **alias-zone-id** - **[string]** - (required) - Zone id for the r53 alias record. 
* **type** - **[string]** - (default: A) - Record type.  
* **production** - **[boolean]** - (default: true) - Used to prevent alias from being created in staging if only need in production.  

## Output Variables
* **fqdn** - Fully qualified domain name for the record