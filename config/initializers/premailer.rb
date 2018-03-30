# frozen_string_literal: true
Premailer::Rails.config.merge!(
  preserve_styles: true,
  preserve_style_attribute: true,
  remove_classes: true,
  remove_ids: true,
  css_to_attributes: true,
  verbose: true
)
