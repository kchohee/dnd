Dnd App

User 
    has_many :characters
    has_many :memberships
    has_many campaign, through: membership
    has_many :dugeons, :class_name => 'campaign', :foreign_key => 'dm_id'
    (name, city, state, bio, username, email, title)


Character
    belongs_to :user
    (user_id, Name, race, level, bio)
rails g resource character user:belongs_to name race level:integer bio:text

campaign
    has_many users, through: membership
    has_many :sessions
    belongs_to :dm, :class_name=> 'User'
    (dm_id,name, location, story, difficulty level)
rails g resource campaign dm:integer name location story difficulty

when made a character must be made as well

Membership (join)
    belongs_to :user
    belongs_to :campaign
    (user_id, campaign_id, status => default accepted)
rails g resource membership user_id:integer campaign_id:integer status:boolean


Current RunDown
Users
    edit 
        - functional
    Show
        - functional
    index
        -functional
Characters
    edit
        - creates new character
    index
        -fuctional
    new
        -functional
    show
        - functional
Campaigns
    edit
        -functional
    index
        -Fuctional
    new
        - fuctional
    show
        - fuctional
Membership
    index
        - form for character 
Refactor& finishing touches - 
        Add validations
            - integer on integers, username is uniq, spec file, seed data

