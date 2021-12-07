class ManageIQ::Providers::AutomationManagerDecorator < MiqDecorator
  def self.fonticon
    nil
  end

  def fileicon
    "svg/vendor-#{image_name.downcase}.svg"
  end

  def single_quad
    {
      :fileicon => fileicon
    }
  end

  def quadicon
    icon = {
      :top_left     => {
        :text    => t = inventory_root_groups.size,
        :tooltip => n_("%{number} Inventory Root Group", "%{number} Inventory Root Groups", t) % {:number => t}
      },
      :top_right    => {
        :text    => t = configuration_scripts.size,
        :tooltip => n_("%{number} Template", "%{number} Templates", t) % {:number => t}
      },
      :bottom_left  => {
        :fileicon => fileicon,
        :tooltip  => ui_lookup(:model => type)
      },
      :bottom_right => QuadiconHelper.provider_status(authentication_status, enabled?)
    }
    icon[:middle] = QuadiconHelper::POLICY_SHIELD if get_policies.present?
    icon
  end
end
