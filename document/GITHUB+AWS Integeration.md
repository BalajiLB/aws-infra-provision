In the GITHUB WORKFLOW Action trigger.
To integerate Github & AWS, I used OIDC Provider.
Part-1
IAM-> Identity Providers > Add provider
Type : OpenID Connect
ProviderURL: https://token.actions.githubusercontent.com
Audience: sts.amazonaws.com
Part-2 IAM Role with OIDC Trust for Personal Account Repo
IAM>Roles>CreateRole
token.actions.githubusercontent.com
Audience: sts.amazonaws.com
Select custom trust policy>
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::<YOUR_AWS_ACCOUNT_ID>:oidc-provider/token.actions.githubusercontent.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "token.actions.githubusercontent.com:sub": "repo:BalajiLB/terraform-aws-infra-module:ref:refs/heads/main"
        }
      }
    }
  ]
}

Then add permission "admin" access.
Custom
 IAM for policies for teraform