Ansible Role: codedeploy-agent
=========

This role installs AWS's CodeDeploy agent.

Requirements
------------

None.

Role Variables
--------------

No variables are required to be set to run this role in AWS.  If you use it to install it to servers outside of AWS, you must set the region:

     ansible_ec2_placement_region: us-east-1

Dependencies
------------

You must have CodeDeploy working properly in AWS.

Example Playbook
----------------

    - hosts: servers
      vars:
         ansible_ec2_placement_region: us-east-1     #<- if local datacetner
      roles:
         - AustinCloudGuru.codedeploy-agent

License
-------

MIT

Author Information
------------------

Mark Honomichl aka [AustinCloudGuru](https://austincloud.guru)
Created in 2016
