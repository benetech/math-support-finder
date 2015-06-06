# Ansible managed: /ansible/roles/unicorn/templates/unicorn.rb.j2 modified on 2015-06-06 18:46:12 by vagrant on localhost

working_directory '/Math-Support-Matrix'

pid '/Math-Support-Matrix/tmp/unicorn.development.pid'

stderr_path '/Math-Support-Matrix/log/unicorn.err.log'
stdout_path '/Math-Support-Matrix/log/unicorn.log'

listen '/tmp/unicorn.development.sock'

worker_processes 2

timeout 30
