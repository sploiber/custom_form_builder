class LabeledFormBuilder < ActionView::Helpers::FormBuilder
  (field_helpers -
    %w(check_box radio_button hidden_field label)).each do |selector|
      src = <<-END_SRC
        def #{selector}(field, options = {})
          @template.content_tag("p", label(field) + ": " + super,
                             :class => @template.cycle("", "alt-row"))
        end
      END_SRC
      class_eval src, __FILE__, __LINE__
  end
end
