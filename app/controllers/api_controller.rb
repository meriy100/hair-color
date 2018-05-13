class ApiController < ActionController::Base
  # before_action :require_login
  rescue_from Exception, with: :render_error

  class ApiSerializerAdapter < ActiveModelSerializers::Adapter::Base
    def serializable_hash(options = {})
      {
        data: ::ActiveModelSerializers::Adapter::Attributes.new(serializer, instance_options).serializable_hash(options),
        meta: options[:meta]
      }
    end
  end

  ::ActiveModelSerializers.config.adapter = ApiSerializerAdapter

  def render_error(ex)
    code = ActionDispatch::ExceptionWrapper.new(Rails.env, ex).status_code
    render json: { message: ex.message, status: code }, status: code
  end
end
