Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '252990398161253', '7dfbaab46d458f94c653836a45048e98'
end
