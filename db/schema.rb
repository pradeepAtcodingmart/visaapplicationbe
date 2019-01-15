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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_01_142623) do

  create_table "address_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "street"
    t.string "village"
    t.string "state"
    t.string "country"
    t.string "pincode"
    t.string "mobileno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicant_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "name"
    t.string "gender"
    t.string "birth_city"
    t.string "birth_country"
    t.string "religion"
    t.string "identification_mark"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupation_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "present_occupation"
    t.string "employer_name"
    t.string "designation"
    t.string "address"
    t.string "past_occupation"
    t.string "organization"
    t.string "rank"
    t.string "place_of_posting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parent_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "father_name"
    t.string "father_nationality"
    t.string "father_prev_nationality"
    t.string "father_place_of_birth"
    t.string "father_country_of_birth"
    t.string "mother_name"
    t.string "mother_nationality"
    t.string "mother_prev_nationality"
    t.string "mother_place_of_birth"
    t.string "mother_country_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passport_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "passport_number"
    t.string "place_of_issue"
    t.string "data_of_issue"
    t.string "country_of_issue"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "name"
    t.string "dob"
    t.string "country_of_birth"
    t.string "identification_mark"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "visa_applying_from"
    t.string "indian_mission"
    t.string "nationality"
    t.string "dob"
    t.string "email"
    t.string "re_entered_email"
    t.string "date_of_arrival"
    t.string "visa_type"
    t.string "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visa_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "applicant_id"
    t.string "place_to_be_visited"
    t.string "visa_duration_in_month"
    t.string "no_of_entries"
    t.string "date_of_journey"
    t.string "port_of_arrival_india"
    t.string "port_of_exited_india"
    t.string "last_visited_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
