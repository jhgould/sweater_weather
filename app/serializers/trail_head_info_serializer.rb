class TrailHeadInfoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :weather, :trails
end
