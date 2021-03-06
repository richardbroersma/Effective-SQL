-- Ensure you've run RecipesStructure.sql
-- and RecipesData.sql in the Sample Databases folder
-- in order to run this example. 

ALTER SESSION SET CURRENT_SCHEMA = RecipesSample;

SELECT Recipes.RecipeTitle
FROM Recipes
WHERE EXISTS 
  (SELECT Recipe_Ingredients.RecipeID
   FROM Ingredients INNER JOIN Recipe_Ingredients
     ON Ingredients.IngredientID = 
          Recipe_Ingredients.IngredientID
   WHERE Ingredients.IngredientName = 'Beef'
      AND Recipe_Ingredients.RecipeID = Recipes.RecipeID)
AND EXISTS 
  (SELECT Recipe_Ingredients.RecipeID
   FROM Ingredients INNER JOIN Recipe_Ingredients
     ON Ingredients.IngredientID = 
          Recipe_Ingredients.IngredientID
   WHERE Ingredients.IngredientName = 'Garlic'
      AND Recipe_Ingredients.RecipeID = Recipes.RecipeID);
