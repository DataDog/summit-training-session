This repo is all the content used for the Hands-On Training.

To see the site used in the training, visit https://datadog.github.io/summit-training-session/

The first four sections of the training rely on a 5 machine demo environment

![environment](https://datadog.github.io/summit-training-session/images/buildinggreatdashboards/environment.png)

I built this environment using Ansible on AWS. It requires your AWS secrets to be set in environment variables. At Datadog we use [aws-vault from 99Designs](https://github.com/99designs/aws-vault) to store these on our local boxes. Its pretty cool and you should use it too.

To get started with ansible, first create a file called `apikeyvars.yml` in the parent directory of the repo. This should include the group number and datadog apikey for each group. For example:

        api_keys:
            "1": "firstapikeyhere"
            "2": "secondgroupapikey"
            "3": "thirdgroupapikey"

Next, go to vars/main.yml and update the different variables to what you  need.

Now you should be able to run the scripts (you do have ansible installed, right?)


        ansible-playbook -i inventory 1-new-instances.yml --extra-vars "group=1"

The group variable tells it which group to create. So if you want to create 2 groups, run this twice with group=1 and then group=2. I use the FishShell and created a function to cycle through all of the groups I need. Here is that function in case its useful for you:

        function ansgroup -d "run a playbook on a up to x groups"
          set count $argv[1]
          set play $argv[2]
          pushd ~/Projects/DatadogRepos/summit-training
          aws-vault exec demo -- pwd
          for x in (seq 1 $count)
            aws-vault exec demo -- ansible-playbook -i inventory $play --extra-vars "group=$x" &
          end
          popd
        end

Now you should have 5 machines ready to go. Run this command to install the applications and the agents:

        ansible-playbook -i inventory 2-install-instances.yml --extra-vars "group=1 eventname=sfsummit"

Now haproxy, apache, and mysql should be ready to go. Run this command to install the app that apache runs:

        ansible-playbook -i inventory 3-installapp.yml --extra-vars "group=1"

And finally use 4-issues-badapacheworkers.yml and 5-issues-badapacheworkers-opt1.yml to see a bad config added to one of the apache servers in each group. **To get that to work you have to create a group in your inventory/hosts file pointing to one 'bad' apache server in each group**. Also, you don't need the extra-vars arg for these.

The 1-new-instances with set up a AWS Security Group that allows only you to ssh in. Running 0-updatesg.yml will update all the security groups in case you have a new external ip address.

Hopefelly that answers all questions, but if you have more, you can reach me at mattw@datadoghq.com or on Twitter, I am @technovangelist
