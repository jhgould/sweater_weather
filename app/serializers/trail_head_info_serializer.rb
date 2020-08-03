class TrailHeadInfoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :location, :weather, :trails
end
