Fabricator(:notification) do
  activity { Fabricate([:mention, :status, :follow, :follow_request, :favourite].sample) }
end
