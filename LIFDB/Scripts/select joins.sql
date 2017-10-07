SELECT objects_types.Name, id2.Name, id3.Name, id4.Name, id5.Name, id6.Name, id7.Name, id8.Name FROM objects_types 
LEFT JOIN objects_types AS id2 ON objects_types.ParentID = id2.ID
LEFT JOIN objects_types AS id3 ON id2.ParentID = id3.ID
LEFT JOIN objects_types AS id4 ON id3.ParentID = id4.ID
LEFT JOIN objects_types AS id5 ON id4.ParentID = id5.ID
LEFT JOIN objects_types AS id6 ON id5.ParentID = id6.ID
LEFT JOIN objects_types AS id7 ON id6.ParentID = id7.ID
LEFT JOIN objects_types AS id8 ON id7.ParentID = id8.ID

SELECT recipe.Name, recipe_requirement.Quantity, objects_types.Name, rr2.Quantity, ot2.Name FROM recipe
LEFT JOIN recipe_requirement ON recipe.ID = recipe_requirement.RecipeID
LEFT JOIN objects_types ON objects_types.ID = recipe_requirement.MaterialObjectTypeID
LEFT JOIN recipe AS r2 ON objects_types.ID = r2.ResultObjectTypeID
LEFT JOIN recipe_requirement AS rr2 ON r2.ID = rr2.RecipeID
LEFT JOIN objects_types AS ot2 ON ot2.ID = rr2.MaterialObjectTypeID