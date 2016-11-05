# output:
#         {
# 					"userId": int,
# 					"name": "String",
#           "recipes":
#           [
#             {
#               "name": "String",
#               "recipeId": int
#             },
#             {
#               "name": "String",
#               "recipeId": int
#             },
#             {
#               "name": "String",
#               "recipeId": int
#             },
#           ]
# 				}

json.(@user, :id, :name)

json.recipes @user.recipes do |recipe|
  json.call(recipe, :id, :name)
end
