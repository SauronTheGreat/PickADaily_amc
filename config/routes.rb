Layouter::Application.routes.draw do

  resources :facilitators

  resources :imports

  resources :news_sectors

  resources :round_stock_constants

  resources :constants

  resources :player_clients

  resources :news_companies

  resources :client_earnings

  resources :player_earnings

  resources :client_transactions

  resources :player_transactions

  resources :client_players

  resources :clients

  resources :player_assessments

  resources :portfolio_allocations

  resources :player_promises

  resources :player_fee_structures

  resources :company_financials

  resources :investment_types

  resources :economic_parameter_values

  resources :economic_parameter_s

  resources :round_news

  resources :rounds

  resources :simulations

  resources :economic_parameters

  resources :news

  resources :scheme_prices

  resources :schemes

  resources :gold_prices

  resources :fixed_deposits

  resources :debt_paper_prices

  resources :debt_papers

  resources :stock_prices

  resources :stocks

  resources :companies

  resources :sectors

  resources :players

  resources :student_group_users

  resources :facilitator_groups

  resources :student_groups

  devise_for :users
  root :to=>'welcome#landing_page'
  resources :plugin_samples
  resources :jquery_themes
  resources :font_themes
  resources :icon_themes
  resources :temps
  resources :pages
  resources :page_layouts
  resources :layout_themes
  resources :color_themes


  #my get routes
  get '/landing_page'=>'welcome#landing_page'
  match 'initiate_simulation'=>'simulations#initiate_simulation'
  match 'initiate_round'=>'simulations#initiate_round'
  match 'start_round'=>'simulations#start_round'
  match 'end_round'=>'simulations#end_round'
  match 'player_decision_page'=>'welcome#decision_page'
  match 'player_transaction_page'=>'welcome#transaction_page'
  match 'company_stock_prices'=>'stock_prices#get_stock_prices_in_json'
  match 'current_stock_price' =>'stock_prices#get_current_stock_price'






end
