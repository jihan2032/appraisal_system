module AppraisalSystem
  class Engine < ::Rails::Engine
    isolate_namespace AppraisalSystem

    config.generators do |g|
      g.template_engine :haml
    end

  end
end
