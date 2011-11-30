# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111125102520) do

  create_table "active_rounds", :force => true do |t|
    t.integer  "round_id"
    t.integer  "simulation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_earnings", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "client_id"
    t.integer  "earning"
    t.integer  "fee_payout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_players", :force => true do |t|
    t.integer  "client_id"
    t.integer  "round_id"
    t.integer  "player_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_transactions", :force => true do |t|
    t.integer  "client_id"
    t.integer  "player_id"
    t.integer  "investment_type_id"
    t.integer  "investment_round_price_id"
    t.float    "amount_invested"
    t.date     "date_transacted"
    t.date     "expected_date_of_return"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.integer  "return_focus"
    t.integer  "risk_focus"
    t.integer  "tolerance"
    t.boolean  "outlook"
    t.boolean  "diversification_intent"
    t.float    "proportion_invested"
    t.float    "wealth_growth_rate"
    t.float    "fee_sensitivity"
    t.integer  "profit_sharing_sensitivity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "diversification_intent_value"
  end

  create_table "color_themes", :force => true do |t|
    t.string   "back_color"
    t.string   "main_color"
    t.string   "highlight_color"
    t.string   "header_color"
    t.string   "header_text_color"
    t.string   "navigation_panel_color"
    t.string   "extra_panel_color"
    t.string   "footer_panel_color"
    t.string   "text_color"
    t.string   "link_color"
    t.string   "link_color_hover"
    t.integer  "icon_theme"
    t.integer  "jquery_theme"
    t.boolean  "rounded_corners"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "sector_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "base_price"
  end

  create_table "company_financials", :force => true do |t|
    t.integer  "company_id"
    t.integer  "financial_year"
    t.integer  "book_value"
    t.integer  "ev_ebitda"
    t.integer  "gearing"
    t.integer  "turnover"
    t.integer  "profit"
    t.integer  "total_debt"
    t.integer  "debt_rating"
    t.integer  "promoter_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "constants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debt_paper_prices", :force => true do |t|
    t.integer  "round_id"
    t.integer  "debt_paper_id"
    t.date     "debt_paper_date"
    t.float    "open"
    t.float    "high"
    t.float    "low"
    t.float    "close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debt_papers", :force => true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.float    "amount"
    t.integer  "tenure"
    t.float    "rate_of_interest"
    t.integer  "lot_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "economic_parameter_values", :force => true do |t|
    t.integer  "economic_parameter_id"
    t.float    "value"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "economic_parameters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitator_groups", :force => true do |t|
    t.string   "name"
    t.integer  "facilitator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitators", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fixed_deposits", :force => true do |t|
    t.integer  "company_id"
    t.float    "rate_of_interest"
    t.integer  "tenure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "font_themes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gold_prices", :force => true do |t|
    t.date     "price_date"
    t.float    "price"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "icon_themes", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "impact_values", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "value_amount"
  end

  create_table "imports", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "excel_list_file_name"
    t.string   "excel_list_content_type"
    t.integer  "excel_list_file_size"
    t.datetime "excel_list_updated_at"
  end

  create_table "investment_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jquery_themes", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layout_themes", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", :force => true do |t|
    t.text     "description"
    t.integer  "impact_on_economic_growth"
    t.integer  "impact_on_equity"
    t.integer  "impact_on_sector"
    t.integer  "impact_on_company"
    t.integer  "impact_on_gold"
    t.integer  "impact_on_debt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_companies", :force => true do |t|
    t.integer  "news_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_sectors", :force => true do |t|
    t.integer  "sector_id"
    t.integer  "news_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_layouts", :force => true do |t|
    t.integer  "page_id"
    t.integer  "layout_theme_id"
    t.integer  "font_theme_id"
    t.string   "font_weight"
    t.integer  "font_size"
    t.boolean  "theme_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "controller_name"
    t.string   "action_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_assessments", :force => true do |t|
    t.integer  "player_id"
    t.float    "return_risk_ratio"
    t.float    "promised_vs_actual_return"
    t.float    "return"
    t.float    "deviation_from_philosophy"
    t.float    "fees_vs_return"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_clients", :force => true do |t|
    t.integer  "player_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_earnings", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "commissions"
    t.integer  "fine"
    t.integer  "income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_fee_structures", :force => true do |t|
    t.integer  "round_id"
    t.integer  "player_id"
    t.float    "management_fee"
    t.float    "carry_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_promises", :force => true do |t|
    t.integer  "player_id"
    t.float    "expected_return"
    t.integer  "max_risk"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "portfolio_management"
  end

  create_table "player_transactions", :force => true do |t|
    t.integer  "player_id"
    t.integer  "investment_type_id"
    t.integer  "investment_round_price_id"
    t.float    "amount_invested"
    t.date     "date_transacted"
    t.date     "expected_date_of_return"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.integer  "student_group_user_id"
    t.integer  "simulation_id"
    t.boolean  "played"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plugin_samples", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "script_markup"
    t.text     "html_markup"
    t.text     "lesson"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolio_allocations", :force => true do |t|
    t.integer  "player_id"
    t.integer  "min_allocation"
    t.integer  "max_allocation"
    t.integer  "round_id"
    t.integer  "investment_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_news", :force => true do |t|
    t.integer  "round_id"
    t.integer  "news_id"
    t.date     "news_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "month_number"
  end

  create_table "round_stock_constants", :force => true do |t|
    t.integer  "constant_id"
    t.integer  "round_id"
    t.integer  "month_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_id"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "simulation_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "played"
  end

  create_table "scheme_prices", :force => true do |t|
    t.integer  "round_id"
    t.integer  "scheme_id"
    t.date     "price_date"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schemes", :force => true do |t|
    t.string   "name"
    t.integer  "entry_load"
    t.integer  "exit_load"
    t.float    "commission_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simulations", :force => true do |t|
    t.string   "name"
    t.integer  "student_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "no_of_rounds"
    t.integer  "facilitator_id"
    t.boolean  "initiated"
  end

  create_table "stock_prices", :force => true do |t|
    t.integer  "round_id"
    t.integer  "stock_id"
    t.float    "open"
    t.float    "high"
    t.float    "low"
    t.float    "close"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "month_number"
  end

  create_table "stocks", :force => true do |t|
    t.integer  "lot_size"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "base_price"
    t.float    "base_rate"
    t.float    "base_sigma"
  end

  create_table "student_group_users", :force => true do |t|
    t.integer  "student_group_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_groups", :force => true do |t|
    t.string   "name"
    t.integer  "facilitator_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.boolean  "facilitator"
    t.boolean  "student"
    t.boolean  "super_admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
