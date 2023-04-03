# frozen_string_literal: true

module RuboCop
  module Cop
    module Captive
      module Translation
        class DeviseI18nPresence < RuboCop::Cop::Cop
          MSG = "The gem `devise-i18n` should be added to the Gemfile"\
                "if `devise` is present in Gemfile"

          def on_send(node)
            return unless node.command?(:gem)

            gem_name = node.arguments[0]&.value
            return unless gem_name == 'devise'

            add_offense(node, message: MSG) unless devise_i18n_present?
          end

          private

          def devise_i18n_present?
            Gem.loaded_specs.keys.include?('devise-i18n')
          end
        end
      end
    end
  end
end
