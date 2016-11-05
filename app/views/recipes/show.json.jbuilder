# {
#     "name": "String",
# 		"userId": integer,
#     "recipeId": integer,
#     "ingredients": [
#     ],
#     "image": "string",
#     "yield": integer,
#     "instructions":
#     [
#     ]
#   }

json.call(@recipe, :user_id, :name, :ingredients, :image, :yield, :instructions)
json.user @recipe.user.id
