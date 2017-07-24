config =  {
            :with => :active_record,
            :delta => true
}

ThinkingSphinx::Index.define :article, config do
  indexes title
  indexes content
  indexes description

  has created_at
end