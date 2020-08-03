class TrailHeadInfoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :distance, :trails, :weather
end
