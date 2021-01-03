class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :comments 
  
end
