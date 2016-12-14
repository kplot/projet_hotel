Rails.configuration.stripe = {
  :publishable_key => 'pk_test_AMqmkfPngV28yomXIIwI7nO4',
  :secret_key      => 'sk_test_AjKKuHylt1YbnESTcFuDydAS'
  
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]