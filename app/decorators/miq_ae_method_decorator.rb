class MiqAeMethodDecorator < MiqDecorator
  def fileicon
    'svg/vendor-ansible.svg' if location == 'playbook'
  end

  def fonticon
    case location
    when 'inline'
      'fa-ruby'
    when 'expression'
      'fa fa-search'
    when 'ansible_workflow_template'
      'ff ff-load-balancer'
    when 'ansible_job_template'
      'fa pficon-template'
    when 'playbook'
      nil
    else
      'ff ff-method'
    end
  end
end
