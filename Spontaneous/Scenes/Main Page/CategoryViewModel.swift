//
//  CategoryViewModel.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//


//TODO: add some images or different kinds of placeholder images
//TODO: add some marks
//TODO: better organize the code

import UIKit


struct CategoryViewModel {
    var categories: [GeneralCategory] = []
    var filters: [Filter] = []
    var filterContent: [FilterContent] = []
    
    
    let placeholderImage = UIImage(named: "placeholder_image")!
    
    var selectedFilterIndex: Int?
    
    
    func randomizeContent(for category: GeneralCategory, with filter: String) -> FilterContent? {
        guard let selectedFilter = category.filters.first(where: { $0.filterName == filter }) else {
            return nil
        }
        let filterContents = selectedFilter.filterContents
        return filterContents.randomElement()
    }
    
    init() {
        
        let eatFilters = [
            Filter(filterName: "Gluten Free", filterContents: [
                FilterContent(primaryName: "Gluten-Free Quinoa Salad Bowl", fullName: "Gluten-Free Quinoa Salad Bowl", afterName: "dish", description: "Savor the wholesome goodness of a Gluten-Free Quinoa Salad Bowl. Packed with colorful veggies, protein-rich quinoa, and drizzled with a zesty gluten-free vinaigrette. A nourishing and satisfying gluten-free option for your lunch or dinner.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Paleo Almond Flour Banana Bread", fullName: "Paleo Almond Flour Banana Bread", afterName: "dessert", description: "Indulge in the delectable aroma of freshly baked Paleo Almond Flour Banana Bread. A gluten-free treat made with almond flour, ripe bananas, and a hint of sweetness. Enjoy a guilt-free slice of this gluten-free delight.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Cauliflower Pizza Crust", fullName: "Gluten-Free Cauliflower Pizza Crust", afterName: "dish", description: "Create a gluten-free pizza masterpiece with a Gluten-Free Cauliflower Pizza Crust. A low-carb alternative featuring cauliflower, cheese, and gluten-free flour. Top it with your favorite ingredients for a gluten-free pizza delight.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Quinoa-Stuffed Bell Peppers", fullName: "Quinoa-Stuffed Bell Peppers", afterName: "dish", description: "Experience a burst of flavors with Quinoa-Stuffed Bell Peppers. A gluten-free dish filled with a hearty mix of quinoa, veggies, and savory spices. A gluten-free and wholesome option for a satisfying meal.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Raspberry Almond Tart", fullName: "Gluten-Free Raspberry Almond Tart", afterName: "dessert", description: "Delight in the sweetness of a Gluten-Free Raspberry Almond Tart. A gluten-free pastry crust filled with luscious almond cream and topped with fresh raspberries. A gluten-free dessert that's both elegant and delicious.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
            ]),
            
            
            
            Filter(filterName: "Vegan", filterContents: [
                FilterContent(primaryName: "Quinoa and Roasted Vegetable Bowl", fullName: "Quinoa and Roasted Vegetable Bowl", afterName: "dish", description: "Savor the wholesome goodness of a Quinoa and Roasted Vegetable Bowl. Nutrient-packed quinoa combined with a medley of colorful roasted vegetables, drizzled with a zesty vinaigrette. A satisfying and nutritious vegan delight.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Chickpea and Spinach Curry", fullName: "Chickpea and Spinach Curry", afterName: "dish", description: "Experience the bold flavors of India with a Chickpea and Spinach Curry. Tender chickpeas simmered in aromatic spices and fresh spinach, served over fluffy basmati rice. A vegan dish that's a celebration of taste.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Avocado Toast", fullName: "Vegan Avocado Toast", afterName: "dish", description: "Start your day with a burst of flavors from Vegan Avocado Toast. Creamy avocado slices on toasted whole-grain bread, topped with cherry tomatoes, red pepper flakes, and a sprinkle of nutritional yeast. A delicious and energizing vegan breakfast.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Plant-Based Buddha Bowl", fullName: "Plant-Based Buddha Bowl", afterName: "dish", description: "Nourish your body with a Plant-Based Buddha Bowl. A colorful array of roasted sweet potatoes, quinoa, sautéed kale, and creamy tahini dressing. Packed with nutrients and vibrant flavors, this vegan bowl is a feast for the senses. ", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Chocolate Avocado Mousse", fullName: "Vegan Chocolate Avocado Mousse", afterName: "dessert", description: "Indulge your sweet tooth with a guilt-free treat – Vegan Chocolate Avocado Mousse. Silky smooth mousse made from ripe avocados, cocoa powder, and a touch of sweetness. A decadent vegan dessert that satisfies your chocolate cravings. ", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!)
                
            ]),
            
            
            Filter(filterName: "Vegetarian", filterContents: [
                
                FilterContent(primaryName: "Caprese Salad with Balsamic Glaze", fullName: "Caprese Salad with Balsamic Glaze", afterName: "dish", description: "Indulge in the freshness of a classic Caprese Salad drizzled with tangy balsamic glaze. A burst of flavors awaits you with juicy tomatoes, creamy mozzarella, and aromatic basil leaves. A taste of Italy on your plate, promising a delightful experience.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Spinach and Feta Stuffed Peppers", fullName: "Vegetarian Spinach and Feta Stuffed Peppers", afterName: "dish", description: "Experience the Mediterranean goodness in every bite of these stuffed peppers. Colorful bell peppers filled with a delectable mix of spinach, feta cheese, and aromatic herbs. A wholesome and flavorful vegetarian dish that promises to satisfy your taste buds.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Eggplant Parmesan", fullName: "Eggplant Parmesan", afterName: "dish", description: "Delight in the rich taste of Eggplant Parmesan with layers of thinly sliced eggplant, marinara sauce, and melted cheese. A comforting and hearty vegetarian dish that transports you to the heart of Italian home cooking.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Sushi Rolls", fullName: "Vegetarian Sushi Rolls", afterName: "dish", description: "Embark on a culinary journey with these Vegetarian Sushi Rolls. Nori-wrapped sushi filled with vibrant vegetables, avocado, and seasoned rice. A light and flavorful vegetarian option that brings the art of sushi to your table.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Mushroom and Spinach Quiche", fullName: "Mushroom and Spinach Quiche", afterName: "dish", description: "Savor the flaky goodness of Mushroom and Spinach Quiche with a buttery crust embracing a savory filling of mushrooms, spinach, and creamy cheese. A sophisticated and satisfying vegetarian brunch or dinner option.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
            ]),
            
            Filter(filterName: "No-Dairy", filterContents: [
                
                FilterContent(primaryName: "Dairy-Free Coconut Curry Chickpeas", fullName: "Dairy-Free Coconut Curry Chickpeas", afterName: "dish", description: "Indulge in the aromatic flavors of Coconut Curry Chickpeas. A dairy-free delight featuring chickpeas simmered in a luscious coconut curry sauce, infused with a blend of spices. A comforting and flavorful option for those seeking dairy-free goodness.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                FilterContent(primaryName: "Vegan Avocado Chocolate Mousse", fullName: "Vegan Avocado Chocolate Mousse", afterName: "dessert", description: "Experience the creamy decadence of Avocado Chocolate Mousse without dairy. A velvety blend of ripe avocados, cocoa powder, and sweetened with natural alternatives. A guilt-free and delicious dairy-free dessert to satisfy your sweet cravings.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Spinach and Artichoke Dip", fullName: "Dairy-Free Spinach and Artichoke Dip", afterName: "appetizer", description: "Delight your taste buds with a Dairy-Free Spinach and Artichoke Dip. A creamy and savory blend of spinach, artichokes, and dairy-free cheese. Perfect for dipping your favorite veggies or chips, offering a dairy-free twist on a classic appetizer.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                FilterContent(primaryName: "Coconut Milk Ice Cream Cones", fullName: "Coconut Milk Ice Cream Cones", afterName: "dessert", description: "Cool down with the sweet goodness of Coconut Milk Ice Cream Cones. A dairy-free frozen delight featuring coconut milk-based ice cream in a crispy cone. An indulgent and refreshing treat for those who prefer dairy-free options.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Blueberry Almond Smoothie", fullName: "Dairy-Free Blueberry Almond Smoothie", afterName: "beverage", description: "Start your day with a burst of freshness from a Dairy-Free Blueberry Almond Smoothie. A delightful blend of blueberries, almond milk, and natural sweetness. A dairy-free and nutritious beverage to kickstart your mornings.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
            ]),
            
            Filter(filterName: "No restrictions", filterContents: [
                FilterContent(primaryName: "Classic Cheeseburger", fullName: "Classic Cheeseburger", afterName: "dish", description: "This is a type of burger that you might find in traditional American diners. A juicy beef patty topped with melted cheese, lettuce, tomato, and pickles, sandwiched between a soft sesame seed bun. You will not regret eating this meal.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Margarita Pizza", fullName: "Margarita Pizza", afterName: "dish", description: "Experience the essence of Italian cuisine with a Margarita Pizza. Thin crust, tomato sauce, fresh mozzarella, basil leaves, and a drizzle of olive oil. This classic pizza will transport you to the streets of Naples. You will not regret eating this meal.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Spicy Tofu Stir-Fry", fullName: "Spicy Tofu Stir-Fry", afterName: "dish", description: "Embrace the flavors of Asia with a Spicy Tofu Stir-Fry. Cubes of tofu sautéed with colorful vegetables in a spicy soy-based sauce. Served over steamed rice, this dish brings the perfect balance of heat and savory goodness. You will not regret eating this meal.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Mouthwatering Sushi Platter", fullName: "Mouthwatering Sushi Platter", afterName: "dish", description: "Indulge in the artistry of Japanese cuisine with a Mouthwatering Sushi Platter. A selection of fresh nigiri and rolls featuring a variety of seafood. Each bite is a symphony of flavors and textures. You will not regret eating this meal.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Savory Chicken Alfredo", fullName: "Savory Chicken Alfredo", afterName: "dish", description: "Delight in the richness of Italian-American comfort food with Savory Chicken Alfredo. Tender pieces of chicken in a creamy Alfredo sauce, tossed with fettuccine pasta. A satisfying and indulgent dish to warm your soul. You will not regret eating this meal.", image: UIImage(named: "eat_placeholder") ?? UIImage(named: "placeholder_image")!),
                
            ])
        ]
        
        let cookFilters = [
            
            Filter(filterName: "Gluten Free", filterContents: [
                FilterContent(primaryName: "Gluten-Free Quinoa Salad", fullName: "Gluten-Free Quinoa Salad", afterName: "recipe", description: "Ingredients: quinoa, cherry tomatoes, cucumbers, red bell pepper, feta cheese, olives, olive oil, lemon juice, herbs. Cook quinoa. Mix with chopped vegetables, feta, and olives. Drizzle with olive oil and lemon juice. Garnish with herbs.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Chickpea Pasta with Pesto", fullName: "Gluten-Free Chickpea Pasta with Pesto", afterName: "recipe", description: "Ingredients: gluten-free chickpea pasta, cherry tomatoes, basil pesto, pine nuts, Parmesan cheese. Cook chickpea pasta. Toss with halved cherry tomatoes, basil pesto, and toasted pine nuts. Sprinkle with Parmesan.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Zucchini Noodles with Avocado Sauce", fullName: "Gluten-Free Zucchini Noodles with Avocado Sauce", afterName: "recipe", description: "Ingredients: zucchini, cherry tomatoes, avocado, garlic, lime, cilantro. Spiralize zucchini into noodles. Blend avocado, garlic, lime juice, and cilantro into a creamy sauce. Toss zucchini noodles with sauce and halved cherry tomatoes.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Quinoa Pizza Crust", fullName: "Gluten-Free Quinoa Pizza Crust", afterName: "recipe", description: "Ingredients: quinoa, water, baking powder, salt, Italian herbs. Blend quinoa, water, baking powder, and salt. Pour batter onto a pizza pan. Sprinkle with Italian herbs. Bake until golden. Add your favorite gluten-free toppings.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Stuffed Bell Peppers with Ground Turkey", fullName: "Gluten-Free Stuffed Bell Peppers with Ground Turkey", afterName: "recipe", description: "Ingredients: bell peppers, ground turkey, quinoa, black beans, corn, salsa, cumin, chili powder. Cook quinoa. Brown ground turkey. Mix with cooked quinoa, black beans, corn, salsa, cumin, and chili powder. Stuff bell peppers. Bake until peppers are tender.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Cauliflower Crust Margherita Pizza", fullName: "Gluten-Free Cauliflower Crust Margherita Pizza", afterName: "recipe", description: "Ingredients: cauliflower, eggs, mozzarella cheese, tomato sauce, fresh mozzarella, tomatoes, basil. Rice cauliflower. Mix with eggs and mozzarella. Press into a crust. Bake until golden. Top with tomato sauce, fresh mozzarella, tomatoes, and basil.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Lemon Garlic Shrimp Quinoa", fullName: "Gluten-Free Lemon Garlic Shrimp Quinoa", afterName: "recipe", description: "Ingredients: quinoa, shrimp, garlic, lemon, cherry tomatoes, spinach. Cook quinoa. Sauté shrimp with garlic. Mix with cooked quinoa, lemon juice, halved cherry tomatoes, and spinach. Serve warm.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Banana Pancakes", fullName: "Gluten-Free Banana Pancakes", afterName: "recipe", description: "Ingredients: gluten-free flour, ripe bananas, almond milk, eggs, baking powder, vanilla extract. Mash bananas. Mix with gluten-free flour, almond milk, eggs, baking powder, and vanilla extract. Cook as pancakes. Serve with your favorite toppings.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Chicken and Vegetable Stir-Fry", fullName: "Gluten-Free Chicken and Vegetable Stir-Fry", afterName: "recipe", description: "Ingredients: chicken breast, broccoli, bell peppers, carrots, gluten-free soy sauce, ginger. Slice chicken. Stir-fry with vegetables in gluten-free soy sauce and ginger until cooked through. Serve over rice or gluten-free noodles.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Gluten-Free Chocolate Avocado Mousse", fullName: "Gluten-Free Chocolate Avocado Mousse", afterName: "recipe", description: "Ingredients: avocados, cocoa powder, maple syrup, vanilla extract, almond milk. Blend avocados, cocoa powder, maple syrup, vanilla extract, and almond milk until smooth. Chill in the refrigerator. Serve as a rich and creamy dessert.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
            ]),
            
            Filter(filterName: "Vegan", filterContents: [
                
                FilterContent(primaryName: "Vegan Chickpea Curry", fullName: "Vegan Chickpea Curry", afterName: "recipe", description: "Ingredients: chickpeas, coconut milk, tomatoes, onions, garlic, ginger, curry spices. To prepare, sauté onions, garlic, and ginger. Add tomatoes, coconut milk, and chickpeas. Simmer until chickpeas are tender. Season with curry spices. Serve over rice or quinoa.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Lentil and Vegetable Stir-Fry", fullName: "Vegan Lentil and Vegetable Stir-Fry", afterName: "recipe", description: "Ingredients: green lentils, broccoli, bell peppers, carrots, soy sauce, garlic, ginger. Sauté garlic and ginger. Add lentils and stir-fry with vegetables in soy sauce until tender. Serve over rice or noodles.",  image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Roasted Vegetable Buddha Bowl", fullName: "Vegan Roasted Vegetable Buddha Bowl", afterName: "recipe", description: "Ingredients: quinoa, roasted sweet potatoes, Brussels sprouts, avocado, tahini dressing. Cook quinoa. Roast sweet potatoes and Brussels sprouts. Assemble bowl with quinoa, roasted veggies, sliced avocado. Drizzle with tahini dressing.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Avocado and Black Bean Wrap", fullName: "Vegan Avocado and Black Bean Wrap", afterName: "recipe", description: "Ingredients: black beans, avocado, tomatoes, lettuce, whole wheat wraps, salsa. Mash black beans and avocado. Assemble wraps with mashed mixture, sliced tomatoes, lettuce. Top with salsa.", image: UIImage(named: "cook_placeholder2") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Quinoa and Chickpea Salad", fullName: "Vegan Quinoa and Chickpea Salad", afterName: "recipe", description: "Ingredients: quinoa, chickpeas, cucumber, cherry tomatoes, red onion, olives, olive oil, lemon juice, herbs. Cook quinoa. Mix with chickpeas, chopped vegetables, olives, dressing. Serve as a refreshing salad.", image: UIImage(named: "cook_placeholder2") ?? UIImage(named: "placeholder_image")!),
                
                
                FilterContent(primaryName: "Vegan Sweet Potato and Black Bean Chili", fullName: "Vegan Sweet Potato and Black Bean Chili", afterName: "recipe", description: "Ingredients: sweet potatoes, black beans, tomatoes, onions, garlic, chili spices. Sauté onions and garlic. Add sweet potatoes, tomatoes, black beans, and spices. Simmer until sweet potatoes are tender. Serve with your favorite toppings.", image: UIImage(named: "cook_placeholder2") ?? UIImage(named: "placeholder_image")!),
                
                
                FilterContent(primaryName: "Vegan Spinach and Mushroom Stuffed Bell Peppers", fullName: "Vegan Spinach and Mushroom Stuffed Bell Peppers", afterName: "recipe", description: "Ingredients: bell peppers, spinach, mushrooms, quinoa, nutritional yeast, garlic. Cook quinoa. Sauté mushrooms, spinach, and garlic. Mix with quinoa and nutritional yeast. Stuff bell peppers. Bake until peppers are tender.", image: UIImage(named: "cook_placeholder2") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegan Coconut and Lime Cauliflower Rice", fullName: "Vegan Coconut and Lime Cauliflower Rice", afterName: "recipe", description: "Ingredients: cauliflower rice, coconut milk, lime, cilantro, peanuts. Cook cauliflower rice. Mix with coconut milk, lime juice, and cilantro. Garnish with peanuts. Serve as a flavorful side dish.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                
                FilterContent(primaryName: "Vegan Teriyaki Tofu Stir-Fry", fullName: "Vegan Teriyaki Tofu Stir-Fry", afterName: "recipe", description: "Ingredients: tofu, broccoli, bell peppers, carrots, teriyaki sauce, sesame oil. Press tofu and cut into cubes. Stir-fry with vegetables in sesame oil and teriyaki sauce until tofu is golden and veggies are tender. Serve over rice.", image: UIImage(named: "cook_placeholder2") ?? UIImage(named: "placeholder_image")!),
                
                
                FilterContent(primaryName: "Vegan Mediterranean Quinoa Bowl", fullName: "Vegan Mediterranean Quinoa Bowl", afterName: "recipe", description: "Ingredients: quinoa, chickpeas, cherry tomatoes, cucumber, Kalamata olives, red onion, hummus. Cook quinoa. Mix with chickpeas, chopped vegetables, and olives. Serve in a bowl with a dollop of hummus.", image: UIImage(named: "cook_placeholder2") ?? UIImage(named: "placeholder_image")!),
                 
            ]),
            
            Filter(filterName: "Vegetarian", filterContents: [
                
                FilterContent(primaryName: "Vegetarian Quinoa Salad with Roasted Vegetables", fullName: "Vegetarian Quinoa Salad with Roasted Vegetables", afterName: "recipe", description: "Ingredients: quinoa, bell peppers, zucchini, cherry tomatoes, red onion, feta cheese, olive oil, balsamic vinegar, herbs. Cook quinoa. Roast vegetables. Mix with quinoa, feta, and dressing. Serve chilled.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                
                FilterContent(primaryName: "Vegetarian Lentil Soup", fullName: "Vegetarian Lentil Soup", afterName: "recipe", description: "Ingredients: green lentils, carrots, celery, onion, garlic, vegetable broth, tomatoes, cumin, coriander. Sauté onions, garlic, and veggies. Add lentils, broth, and tomatoes. Season with cumin and coriander. Simmer until lentils are tender.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Spinach and Ricotta Stuffed Shells", fullName: "Vegetarian Spinach and Ricotta Stuffed Shells", afterName: "recipe", description: "Ingredients: jumbo pasta shells, spinach, ricotta cheese, mozzarella cheese, marinara sauce, garlic, herbs. Cook pasta. Mix spinach, ricotta, mozzarella, garlic, and herbs. Stuff shells. Bake with marinara sauce.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Eggplant Parmesan", fullName: "Vegetarian Eggplant Parmesan", afterName: "recipe", description: "Ingredients: eggplant, breadcrumbs, marinara sauce, mozzarella cheese, Parmesan cheese, basil. Coat eggplant in breadcrumbs. Bake until crispy. Layer with marinara sauce, mozzarella, and Parmesan. Bake until cheese melts. Garnish with fresh basil.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Black Bean Tacos", fullName: "Vegetarian Black Bean Tacos", afterName: "recipe", description: "Ingredients: black beans, corn tortillas, avocado, salsa, lime, cilantro. Heat black beans. Assemble tacos with beans, sliced avocado, salsa, and a squeeze of lime. Garnish with fresh cilantro.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Mushroom Risotto", fullName: "Vegetarian Mushroom Risotto", afterName: "recipe", description: "Ingredients: Arborio rice, mushrooms, vegetable broth, white wine, Parmesan cheese, onion, garlic. Sauté onion and garlic. Add rice and mushrooms. Deglaze with white wine. Cook risotto, adding broth gradually. Stir in Parmesan.",  image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Pesto Pasta with Cherry Tomatoes", fullName: "Vegetarian Pesto Pasta with Cherry Tomatoes", afterName: "recipe", description: "Ingredients: pasta, cherry tomatoes, pesto sauce, pine nuts, Parmesan cheese. Cook pasta. Toss with halved cherry tomatoes, pesto, and toasted pine nuts. Sprinkle with Parmesan.",image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Sweet Potato and Black Bean Burritos", fullName: "Vegetarian Sweet Potato and Black Bean Burritos", afterName: "recipe", description: "Ingredients: sweet potatoes, black beans, tortillas, salsa, avocado, cilantro. Roast sweet potatoes. Mash black beans. Assemble burritos with sweet potatoes, black beans, salsa, sliced avocado, and cilantro.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Greek Quinoa Salad", fullName: "Vegetarian Greek Quinoa Salad", afterName: "recipe", description: "Ingredients: quinoa, cherry tomatoes, cucumber, Kalamata olives, feta cheese, red onion, Greek dressing. Cook quinoa. Mix with chopped vegetables, olives, feta, and dressing. Serve as a refreshing salad.",  image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Stuffed Bell Peppers with Quinoa", fullName: "Vegetarian Stuffed Bell Peppers with Quinoa", afterName: "recipe", description: "Ingredients: bell peppers, quinoa, black beans, corn, tomatoes, Mexican spices, cheese. Cook quinoa. Mix with black beans, corn, tomatoes, and spices. Stuff bell peppers. Bake until peppers are tender. Sprinkle with cheese.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
            ]),
            
            Filter(filterName: "No-Dairy", filterContents: [
                FilterContent(primaryName: "Dairy-Free Tomato Basil Pasta", fullName: "Dairy-Free Tomato Basil Pasta", afterName: "recipe", description: "Ingredients: pasta, tomatoes, garlic, fresh basil, olive oil, pine nuts. Cook pasta. Sauté garlic in olive oil. Add chopped tomatoes and cook until softened. Toss with cooked pasta. Garnish with fresh basil and pine nuts.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Cauliflower Alfredo Sauce with Zoodles", fullName: "Dairy-Free Cauliflower Alfredo Sauce with Zoodles", afterName: "recipe", description: "Ingredients: cauliflower, garlic, almond milk, nutritional yeast, zucchini noodles. Steam cauliflower and blend with garlic, almond milk, and nutritional yeast. Pour over zucchini noodles. Enjoy a creamy, dairy-free Alfredo.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Avocado Chocolate Mousse", fullName: "Dairy-Free Avocado Chocolate Mousse", afterName: "recipe", description: "Ingredients: avocados, cocoa powder, maple syrup, almond milk. Blend avocados, cocoa powder, maple syrup, and almond milk until smooth. Chill in the refrigerator. Indulge in a rich and creamy chocolate mousse.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Thai Coconut Curry", fullName: "Dairy-Free Thai Coconut Curry", afterName: "recipe", description: "Ingredients: tofu, broccoli, bell peppers, coconut milk, red curry paste, ginger, garlic. Sauté tofu, ginger, and garlic. Add coconut milk and red curry paste. Simmer with vegetables until cooked. Serve over rice.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Spinach and Sun-Dried Tomato Stuffed Mushrooms", fullName: "Dairy-Free Spinach and Sun-Dried Tomato Stuffed Mushrooms", afterName: "recipe", description: "Ingredients: mushrooms, spinach, sun-dried tomatoes, garlic, breadcrumbs. Remove mushroom stems and stuff with sautéed spinach, sun-dried tomatoes, and breadcrumbs. Bake until mushrooms are tender.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Lemon Garlic Roasted Potatoes", fullName: "Dairy-Free Lemon Garlic Roasted Potatoes", afterName: "recipe", description: "Ingredients: potatoes, lemon, garlic, olive oil, herbs. Toss potatoes with lemon, garlic, and herbs. Roast until golden brown. Enjoy flavorful and crispy roasted potatoes without dairy.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Vegetable Spring Rolls with Peanut Sauce", fullName: "Dairy-Free Vegetable Spring Rolls with Peanut Sauce", afterName: "recipe", description: "Ingredients: rice paper, lettuce, carrots, cucumbers, vermicelli noodles, peanut sauce. Assemble spring rolls with fresh vegetables and noodles. Dip in dairy-free peanut sauce for a tasty snack or appetizer.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Mediterranean Quinoa Stuffed Bell Peppers", fullName: "Dairy-Free Mediterranean Quinoa Stuffed Bell Peppers", afterName: "recipe", description: "Ingredients: bell peppers, quinoa, chickpeas, cherry tomatoes, Kalamata olives, olive oil, lemon juice. Cook quinoa. Mix with chickpeas, tomatoes, olives, and lemon dressing. Stuff bell peppers. Bake until peppers are tender.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Spicy Black Bean and Corn Salsa", fullName: "Dairy-Free Spicy Black Bean and Corn Salsa", afterName: "recipe", description: "Ingredients: black beans, corn, tomatoes, red onion, jalapeño, lime juice, cilantro. Mix black beans, corn, diced tomatoes, onion, jalapeño, lime juice, and cilantro. Serve as a refreshing salsa without dairy.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Coconut Lime Chia Pudding", fullName: "Dairy-Free Coconut Lime Chia Pudding", afterName: "recipe", description: "Ingredients: chia seeds, coconut milk, lime zest, maple syrup. Mix chia seeds with coconut milk, lime zest, and sweeten with maple syrup. Refrigerate until the pudding sets. Enjoy a dairy-free and nutritious dessert.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
            ]),
            
            Filter(filterName: "No restrictions", filterContents: [
                
                FilterContent(primaryName: "Vegetarian Margherita Pizza", fullName: "Vegetarian Margherita Pizza", afterName: "recipe", description: "Ingredients: pizza dough, tomato sauce, fresh mozzarella, cherry tomatoes, basil leaves. Roll out the dough, spread tomato sauce, top with mozzarella and tomatoes. Bake until golden. Garnish with fresh basil. A classic and delicious vegetarian pizza.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Mango Avocado Salsa", fullName: "Mango Avocado Salsa", afterName: "recipe", description: "Ingredients: mango, avocado, red onion, cilantro, lime juice. Dice mango and avocado, mix with finely chopped red onion and cilantro. Drizzle with lime juice. Serve as a refreshing salsa with tortilla chips or as a topping.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Quinoa Salad with Roasted Vegetables", fullName: "Quinoa Salad with Roasted Vegetables", afterName: "recipe", description: "Ingredients: quinoa, bell peppers, zucchini, cherry tomatoes, feta cheese. Cook quinoa, roast vegetables, and toss together. Crumble feta on top. A wholesome and flavorful vegetarian quinoa salad.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Caprese Stuffed Avocados", fullName: "Caprese Stuffed Avocados", afterName: "recipe", description: "Ingredients: avocados, cherry tomatoes, fresh mozzarella, balsamic glaze. Hollow out avocados, fill with diced tomatoes and mozzarella. Drizzle with balsamic glaze. A simple and elegant appetizer or side dish.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Vegetarian Margherita Pizza", fullName: "Vegetarian Margherita Pizza", afterName: "recipe", description: "Ingredients: pizza dough, tomato sauce, fresh mozzarella, cherry tomatoes, basil leaves. Roll out the dough, spread tomato sauce, top with mozzarella and tomatoes. Bake until golden. Garnish with fresh basil. A classic and delicious vegetarian pizza.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Mango Avocado Salsa", fullName: "Mango Avocado Salsa", afterName: "recipe", description: "Ingredients: mango, avocado, red onion, cilantro, lime juice. Dice mango and avocado, mix with finely chopped red onion and cilantro. Drizzle with lime juice. Serve as a refreshing salsa with tortilla chips or as a topping.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Quinoa Salad with Roasted Vegetables", fullName: "Quinoa Salad with Roasted Vegetables", afterName: "recipe", description: "Ingredients: quinoa, bell peppers, zucchini, cherry tomatoes, feta cheese. Cook quinoa, roast vegetables, and toss together. Crumble feta on top. A wholesome and flavorful vegetarian quinoa salad.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Caprese Stuffed Avocados", fullName: "Caprese Stuffed Avocados", afterName: "recipe", description: "Ingredients: avocados, cherry tomatoes, fresh mozzarella, balsamic glaze. Hollow out avocados, fill with diced tomatoes and mozzarella. Drizzle with balsamic glaze. A simple and elegant appetizer or side dish.", image: UIImage(named: "cook_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Dairy-Free Coconut Lime Chia Pudding", fullName: "Dairy-Free Coconut Lime Chia Pudding", afterName: "recipe", description: "Ingredients: chia seeds, coconut milk, lime zest, maple syrup. Mix chia seeds with coconut milk, lime zest, and sweeten with maple syrup. Refrigerate until the pudding sets. Enjoy a dairy-free and nutritious dessert.", image: UIImage(named: "cook_placeholder3") ?? UIImage(named: "placeholder_image")!),
            ])
        ]
        
        
        let watchFilters = [
            Filter(filterName: "movies", filterContents: [
                FilterContent(primaryName: "Whispers of the Heart", fullName: "Whispers of the Heart", afterName: "movie", description: "Embark on a heartwarming journey with 'Whispers of the Heart.' A touching tale of self-discovery, dreams, and the magic of ordinary life. Directed by Yoshifumi Kondō, this Studio Ghibli gem is a must-watch for animation enthusiasts.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "The Fall", fullName: "The Fall", afterName: "movie", description: "Experience the visually stunning and emotionally captivating 'The Fall.' Directed by Tarsem Singh, this fantasy adventure takes you on an epic journey through breathtaking landscapes and imaginative storytelling.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "In Bruges", fullName: "In Bruges", afterName: "movie", description: "Dive into the darkly comedic world of 'In Bruges.' Directed by Martin McDonagh, this crime-comedy film follows two hitmen who find themselves in the picturesque city of Bruges, Belgium, leading to unexpected and hilarious consequences.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Moon", fullName: "Moon", afterName: "movie", description: "Explore the thought-provoking science fiction of 'Moon.' Directed by Duncan Jones, this indie gem stars Sam Rockwell in a gripping solo performance as a man working alone on a lunar base, questioning reality and identity.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "The Secret Life of Walter Mitty", fullName: "The Secret Life of Walter Mitty", afterName: "movie", description: "Join Walter Mitty on an inspiring journey in 'The Secret Life of Walter Mitty.' Directed by Ben Stiller, this adventure film combines breathtaking visuals with a heartwarming narrative about self-discovery and embracing life's extraordinary moments.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!)

            ]),
            
            Filter(filterName: "TV-shows", filterContents: [
            
                FilterContent(primaryName: "Chronicles of the Unknown", fullName: "Chronicles of the Unknown", afterName: "TV-show", description: "Embark on a mysterious journey with 'Chronicles of the Unknown.' This lesser-known TV-show weaves together elements of suspense, supernatural occurrences, and unexpected twists, keeping viewers on the edge of their seats.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Beyond the Horizon", fullName: "Beyond the Horizon", afterName: "TV-show", description: "Discover the unexplored territories of 'Beyond the Horizon.' This hidden gem offers a unique blend of adventure, fantasy, and a touch of the extraordinary, making it a must-watch for those seeking something off the beaten path.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),


                    FilterContent(primaryName: "Whispers in the Shadows", fullName: "Whispers in the Shadows", afterName: "TV-show", description: "Uncover the secrets concealed within 'Whispers in the Shadows.' A lesser-known TV-show that masterfully combines elements of mystery and psychological thriller, leaving audiences captivated by its enigmatic narrative.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),


                    FilterContent(primaryName: "Ephemeral Echoes", fullName: "Ephemeral Echoes", afterName: "TV-show", description: "Immerse yourself in the transient world of 'Ephemeral Echoes.' This hidden gem explores the complexities of time, relationships, and the fleeting nature of existence, offering a fresh perspective within the realm of TV-shows.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),


                    FilterContent(primaryName: "Spectral Symphony", fullName: "Spectral Symphony", afterName: "TV-show", description: "Experience the haunting melodies of 'Spectral Symphony.' This lesser-known TV-show blends supernatural elements with a musical backdrop, creating a unique and captivating narrative that resonates with those who enjoy the extraordinary.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                
            ]),
            
            Filter(filterName: "anime", filterContents: [
            
                FilterContent(primaryName: "Spirited Away", fullName: "Spirited Away", afterName: "anime", description: "Immerse yourself in the enchanting world of 'Spirited Away.' Directed by Hayao Miyazaki, this Studio Ghibli masterpiece follows the journey of a young girl navigating a mysterious and magical realm.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Steins;Gate", fullName: "Steins;Gate", afterName: "anime", description: "Embark on a mind-bending adventure with 'Steins;Gate.' This science fiction anime, directed by Hiroshi Hamasaki, explores time travel, consequences, and the struggle to alter fate.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Cowboy Bebop", fullName: "Cowboy Bebop", afterName: "anime", description: "Enter the futuristic world of bounty hunters in 'Cowboy Bebop.' Directed by Shinichirō Watanabe, this space western seamlessly blends action, jazz, and a compelling narrative.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "My Neighbor Totoro", fullName: "My Neighbor Totoro", afterName: "anime", description: "Experience the magic of childhood and friendship in 'My Neighbor Totoro.' Directed by Hayao Miyazaki, this heartwarming anime captures the whimsical adventures of two sisters and their encounters with forest spirits.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Attack on Titan", fullName: "Attack on Titan", afterName: "anime", description: "Dive into the intense world of 'Attack on Titan.' Directed by Tetsurō Araki, this anime explores humanity's fight for survival against gigantic humanoid creatures, unraveling mysteries and political intrigue.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Fullmetal Alchemist: Brotherhood", fullName: "Fullmetal Alchemist: Brotherhood", afterName: "anime", description: "Embark on an epic journey of alchemy, morality, and sacrifice in 'Fullmetal Alchemist: Brotherhood.' Directed by Yasuhiro Irie, this anime is a masterpiece that delves into profound themes.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Death Note", fullName: "Death Note", afterName: "anime", description: "Enter the psychological thriller realm of 'Death Note.' Directed by Tetsurō Araki, this anime follows the gripping story of a high school student who gains possession of a supernatural notebook with deadly consequences.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "One Punch Man", fullName: "One Punch Man", afterName: "anime", description: "Enjoy the comedic and action-packed world of 'One Punch Man.' Directed by Shingo Natsume, this anime follows Saitama, a hero who defeats his enemies with a single punch, leading to a unique and entertaining narrative.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Neon Genesis Evangelion", fullName: "Neon Genesis Evangelion", afterName: "anime", description: "Delve into the complex and philosophical narrative of 'Neon Genesis Evangelion.' Directed by Hideaki Anno, this mecha anime explores the psychological struggles of young pilots in a world threatened by mysterious beings.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Hunter x Hunter", fullName: "Hunter x Hunter", afterName: "anime", description: "Embark on a thrilling adventure in 'Hunter x Hunter.' Directed by Hiroshi Kōjina, this anime follows Gon Freecss as he aspires to become a Hunter, encountering challenges, friendships, and powerful foes.", image: UIImage(named: "anime_placeholder") ?? UIImage(named: "placeholder_image")!)

            ]),
            
            
            Filter(filterName: "I dont Care", filterContents: [
            
                    FilterContent(primaryName: "Chronicles of the Unknown", fullName: "Chronicles of the Unknown", afterName: "TV-show", description: "Embark on a mysterious journey with 'Chronicles of the Unknown.' This lesser-known TV-show weaves together elements of suspense, supernatural occurrences, and unexpected twists, keeping viewers on the edge of their seats.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),
                    
                    FilterContent(primaryName: "Lunar Serenade", fullName: "Lunar Serenade", afterName: "anime", description: "Dive into the enchanting world of 'Lunar Serenade.' This anime combines breathtaking visuals, a compelling storyline, and fantastical elements, offering a mesmerizing experience for anime enthusiasts.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),
                    
                    FilterContent(primaryName: "Whispers in the Wind", fullName: "Whispers in the Wind", afterName: "movie", description: "Let the 'Whispers in the Wind' carry you away on a cinematic journey. This lesser-known movie unfolds a tale of love, mystery, and self-discovery against a backdrop of breathtaking landscapes and evocative storytelling.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),
                    
                    FilterContent(primaryName: "Ephemeral Echoes", fullName: "Ephemeral Echoes", afterName: "TV-show", description: "Get lost in the captivating narrative of 'Ephemeral Echoes.' This TV-show intricately weaves together drama, mystery, and human emotions, offering a thought-provoking and unforgettable viewing experience.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Crimson Horizon", fullName: "Crimson Horizon", afterName: "anime", description: "Embark on an epic journey with 'Crimson Horizon.' This anime unfolds in a fantastical world filled with mythical creatures, magic, and unexpected alliances. Anime enthusiasts will find themselves drawn into a rich and imaginative story.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Silent Whispers", fullName: "Silent Whispers", afterName: "movie", description: "Indulge in the cinematic beauty of 'Silent Whispers.' This lesser-known movie combines breathtaking visuals with a poignant narrative, exploring the complexities of human relationships and the power of silence.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),
         ])
        ]
    
        
        let readFilters = [
            
            Filter(filterName: "books", filterContents: [
                FilterContent(primaryName: "Whispers of Autumn", fullName: "Whispers of Autumn", afterName: "novel", description: "Dive into the enchanting world of 'Whispers of Autumn.' This novel paints a vivid portrait of seasonal beauty, love, and introspection, intertwining the lives of characters in a small town where secrets and destinies collide.", image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),

                 FilterContent(primaryName: "Ephemeral Shadows", fullName: "Ephemeral Shadows", afterName: "novel", description: "Explore the depths of mystery and intrigue with 'Ephemeral Shadows.' This gripping novel follows the journey of a detective caught in a web of deception, leading to a heart-pounding revelation that will keep you on the edge of your seat.", image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),

                 FilterContent(primaryName: "Silent Echoes", fullName: "Silent Echoes", afterName: "novel", description: "Immerse yourself in the poignant narrative of 'Silent Echoes.' This novel weaves a tale of love, loss, and the enduring power of memories. The evocative storytelling will leave a lasting impression on your heart.", image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),

                 FilterContent(primaryName: "The Labyrinth's Enigma", fullName: "The Labyrinth's Enigma", afterName: "novel", description: "Embark on an adventurous journey with 'The Labyrinth's Enigma.' This novel combines elements of fantasy and suspense as characters navigate a labyrinth of challenges, secrets, and unexpected alliances.", image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),
            ]),
            Filter(filterName: "manga", filterContents: [
            
                FilterContent(primaryName: "Crimson Serenade", fullName: "Crimson Serenade", afterName: "manga", description: "Delve into the world of 'Crimson Serenade,' a captivating manga that combines supernatural elements with a gripping storyline. Follow the journey of characters entangled in the threads of fate as they navigate challenges beyond the veil of reality.",  image: UIImage(named: "manga_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Ephemeral Whispers", fullName: "Ephemeral Whispers", afterName: "manga", description: "Experience the magic of 'Ephemeral Whispers,' a lesser-known gem in the manga world. This story unfolds in a realm where dreams and reality intersect, taking readers on a visually stunning and emotionally resonant journey.",  image: UIImage(named: "manga_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Lunar Melody", fullName: "Lunar Melody", afterName: "manga", description: "Immerse yourself in the enchanting melodies of 'Lunar Melody.' This manga follows the lives of individuals connected by the power of music, exploring themes of friendship, passion, and the pursuit of one's true self.",  image: UIImage(named: "manga_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Chronicles of Ether", fullName: "Chronicles of Ether", afterName: "manga", description: "Embark on an epic adventure with 'Chronicles of Ether,' a hidden gem among manga series. Unravel the mysteries of a fantastical world where ancient prophecies, magical beings, and a young hero's journey converge in an unforgettable tale.", image: UIImage(named: "manga_placeholder") ?? UIImage(named: "placeholder_image")!),
]),
            Filter(filterName: "scientific articles", filterContents: [
                
                FilterContent(primaryName: "Exploring Quantum Entanglement", fullName: "Exploring Quantum Entanglement", afterName: "scientific article", description: "Dive into the fascinating world of quantum physics with this scientific article. 'Exploring Quantum Entanglement' sheds light on the intricate phenomenon of entanglement and its implications for our understanding of the quantum realm.", image: UIImage(named: "article_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Genome Sequencing Breakthroughs", fullName: "Genome Sequencing Breakthroughs", afterName: "scientific article", description: "Stay informed about the latest advancements in genomics with 'Genome Sequencing Breakthroughs.' This article explores recent breakthroughs in genome sequencing technology and their potential impact on various fields, from medicine to evolutionary biology.", image: UIImage(named: "article_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Neuroplasticity: Unraveling the Brain's Adaptive Secrets", fullName: "Neuroplasticity: Unraveling the Brain's Adaptive Secrets", afterName: "scientific article", description: "Delve into the mysteries of the brain with this insightful article on neuroplasticity. Learn how the brain adapts and rewires itself in response to experiences, providing valuable insights into cognition, learning, and rehabilitation.", image: UIImage(named: "article_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "The Quantum Computing Revolution", fullName: "The Quantum Computing Revolution", afterName: "scientific article", description: "Explore the revolutionary field of quantum computing with this in-depth article. 'The Quantum Computing Revolution' discusses the principles, challenges, and potential applications of quantum computing that could reshape the landscape of computational technology.", image: UIImage(named: "article_placeholder") ?? UIImage(named: "placeholder_image")!),
            
            ]),
            
            Filter(filterName: "idontcare", filterContents: [
                
                FilterContent(primaryName: "The Great Gatsby", fullName: "The Great Gatsby", afterName: "book", description: "F. Scott Fitzgerald's classic tale of love, wealth, and the American Dream. 'The Great Gatsby' is a timeless exploration of the Jazz Age.",  image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "To Kill a Mockingbird", fullName: "To Kill a Mockingbird", afterName: "novel", description: "Harper Lee's poignant exploration of racial injustice and moral growth in the American South. 'To Kill a Mockingbird' remains a literary gem.", image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "The Neuroscience of Memory", fullName: "The Neuroscience of Memory", afterName: "scientific article", description: "Delve into the intricate workings of memory in the human brain. 'The Neuroscience of Memory' provides insights into the fascinating world of cognitive science.",  image: UIImage(named: "book_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "One Piece", fullName: "One Piece", afterName: "manga", description: "Embark on an epic journey with Monkey D. Luffy and his crew. 'One Piece' is a captivating manga filled with adventure, friendship, and discovery.",  image: UIImage(named: "manga_placeholder") ?? UIImage(named: "placeholder_image")!),
                
            ])
        ]
        
        let activityFilters = [
            
            Filter(filterName: "for myself", filterContents: [
            
                FilterContent(primaryName: "Creative Writing Challenge", fullName: "Creative Writing Challenge", afterName: "activity", description: "Unleash your creativity with a writing challenge. Choose a theme or prompt and let your imagination flow. Express yourself through words and enjoy the process.",  image: UIImage(named: "myself_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "DIY Craft Project", fullName: "DIY Craft Project", afterName: "activity", description: "Engage in a do-it-yourself (DIY) craft project. Whether it's making handmade cards, decorating your space, or trying a new craft, enjoy the therapeutic and creative benefits of hands-on creativity.",  image: UIImage(named: "myself_placeholder") ?? UIImage(named: "diy_image")!),

                FilterContent(primaryName: "Nature Photography Expedition", fullName: "Nature Photography Expedition", afterName: "activity", description: "Embark on a photography expedition in nature. Capture the beauty of landscapes, flora, and fauna. Immerse yourself in the art of photography and connect with the natural world.",  image: UIImage(named: "myself_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Mindful Meditation Session", fullName: "Mindful Meditation Session", afterName: "activity", description: "Indulge in a mindful meditation session. Find a quiet space, focus on your breath, and let go of stress. Experience the calming effects of meditation and promote overall well-being.",  image: UIImage(named: "myself_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Home Yoga Practice", fullName: "Home Yoga Practice", afterName: "activity", description: "Practice yoga in the comfort of your home. Follow a guided yoga routine or create your sequence. Enhance flexibility, strength, and mindfulness through a rejuvenating yoga session.",  image: UIImage(named: "myself_placeholder") ?? UIImage(named: "placeholder_image")!),
         ]),
            
            Filter(filterName: "family", filterContents: [
            
                FilterContent(primaryName: "Family Game Night", fullName: "Family Game Night", afterName: "activity", description: "Organize a family game night. Choose a variety of games suitable for all ages, gather around, and enjoy quality time filled with laughter and friendly competition.",  image: UIImage(named: "family_placeholder") ?? UIImage(named: "placeholder_image")!),

                   FilterContent(primaryName: "Homemade Pizza Night", fullName: "Homemade Pizza Night", afterName: "activity", description: "Create a homemade pizza night with your family. Prepare various toppings, let everyone customize their pizzas, and enjoy a delicious and interactive dinner together.", image: UIImage(named: "family_placeholder") ?? UIImage(named: "placeholder_image")!),

                   FilterContent(primaryName: "DIY Arts and Crafts", fullName: "DIY Arts and Crafts", afterName: "activity", description: "Engage in do-it-yourself arts and crafts with your family. Choose a creative project, gather supplies, and spend quality time expressing your artistic side together.", image: UIImage(named: "family_placeholder") ?? UIImage(named: "placeholder_image")!),

                   FilterContent(primaryName: "Family Movie Night", fullName: "Family Movie Night", afterName: "activity", description: "Host a family movie night with everyone's favorite films. Set up a cozy movie-watching area, prepare snacks, and enjoy a cinematic experience with your loved ones.", image: UIImage(named: "family_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Nature Scavenger Hunt", fullName: "Nature Scavenger Hunt", afterName: "activity", description: "Organize a nature scavenger hunt for your family. Explore outdoor spaces, search for items on your list, and enjoy a fun and adventurous day together.", image: UIImage(named: "family_placeholder") ?? UIImage(named: "placeholder_image")!),
                
            ]),
            
            Filter(filterName: "for a group of friends", filterContents: [
                
                FilterContent(primaryName: "Escape Room Challenge", fullName: "Escape Room Challenge", afterName: "activity", description: "Take on an escape room challenge with your group of friends. Test your problem-solving skills, work together as a team, and see if you can escape before time runs out.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),
                    FilterContent(primaryName: "Karaoke Night", fullName: "Karaoke Night", afterName: "activity", description: "Host a karaoke night with your friends. Sing your favorite songs, unleash your inner rock star, and enjoy a fun-filled evening of music and laughter.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Outdoor Adventure", fullName: "Outdoor Adventure", afterName: "activity", description: "Embark on an outdoor adventure with your group of friends. Whether it's hiking, camping, or exploring a new area, embrace the thrill of exploration and create unforgettable memories together.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                    FilterContent(primaryName: "Game Tournament", fullName: "Game Tournament", afterName: "activity", description: "Organize a game tournament with your friends. Choose your favorite video games, board games, or sports activities, and compete against each other in a friendly and competitive tournament.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "DIY Pizza Night", fullName: "DIY Pizza Night", afterName: "activity", description: "Host a DIY pizza night with your friends. Set up a pizza bar with various toppings, get creative with your pizza creations, and enjoy a delicious homemade meal together.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),
            
            ]),
            
            Filter(filterName: "with a partner", filterContents: [
                
                FilterContent(primaryName: "Cooking Class for Two", fullName: "Cooking Class for Two", afterName: "activity", description: "Take a cooking class together with your partner. Choose a cuisine you both enjoy, learn new recipes, and savor the joy of creating a delicious meal as a team.", image: UIImage(named: "partner_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Stargazing Date Night", fullName: "Stargazing Date Night", afterName: "activity", description: "Plan a stargazing date night with your partner. Find a cozy spot, bring blankets, and enjoy the beauty of the night sky together. Share stories, dreams, and the wonders of the universe.", image: UIImage(named: "partner_placeholder") ?? UIImage(named: "placeholder_image")!),


                FilterContent(primaryName: "Couple's Spa Day", fullName: "Couple's Spa Day", afterName: "activity", description: "Indulge in a relaxing spa day for two. Create a spa-like atmosphere at home, pamper yourselves with massages, facials, and soothing treatments, and unwind together.", image: UIImage(named: "partner_placeholder") ?? UIImage(named: "placeholder_image")!),


                FilterContent(primaryName: "Adventure Hike", fullName: "Adventure Hike", afterName: "activity", description: "Embark on an adventure hike with your partner. Choose a scenic trail, explore nature together, and enjoy quality time surrounded by the beauty of the outdoors.", image: UIImage(named: "partner_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Couples Yoga Session", fullName: "Couples Yoga Session", afterName: "activity", description: "Practice yoga together with your partner. Find a calming space, follow a yoga routine, and experience the benefits of wellness and connection in a shared practice.", image: UIImage(named: "partner_placeholder") ?? UIImage(named: "placeholder_image")!),

            
            ]),
            
            Filter(filterName: "with a friend", filterContents: [
                
                FilterContent(primaryName: "Board Game Night", fullName: "Board Game Night", afterName: "activity", description: "Host a board game night with your friend. Pick your favorite board games, enjoy some snacks, and have a fun-filled evening of friendly competition and laughter.", image: UIImage(named: "friend_placeholder") ?? UIImage(named: "placeholder_image")!),

                   FilterContent(primaryName: "Movie Marathon", fullName: "Movie Marathon", afterName: "activity", description: "Plan a movie marathon with your friend. Choose a theme or genre, prepare some popcorn, and enjoy a cinematic experience together. Discuss your favorite scenes and movies.", image: UIImage(named: "friend_placeholder") ?? UIImage(named: "placeholder_image")!),
                   FilterContent(primaryName: "Cooking Challenge", fullName: "Cooking Challenge", afterName: "activity", description: "Take on a cooking challenge with your friend. Select a unique recipe, gather ingredients, and cook together. Explore new culinary skills and savor the delicious results.", image: UIImage(named: "friend_placeholder") ?? UIImage(named: "placeholder_image")!),
                   FilterContent(primaryName: "Outdoor Adventure", fullName: "Outdoor Adventure", afterName: "activity", description: "Embark on an outdoor adventure with your friend. Whether it's hiking, biking, or exploring nature trails, enjoy the beauty of the outdoors and create lasting memories together.", image: UIImage(named: "friend_placeholder") ?? UIImage(named: "placeholder_image")!),
                   FilterContent(primaryName: "Escape Room Experience", fullName: "Escape Room Experience", afterName: "activity", description: "Challenge yourselves with an escape room experience. Work together to solve puzzles and unlock mysteries. Test your teamwork and problem-solving skills for an exciting adventure.", image: UIImage(named: "friend_placeholder") ?? UIImage(named: "placeholder_image")!),
                
            ]),
            
            Filter(filterName: "I dont Care", filterContents: [
            
                FilterContent(primaryName: "Art and Craft Session", fullName: "Art and Craft Session", afterName: "activity", description: "Unleash your creativity with an art and craft session. Whether it's painting, drawing, or DIY crafts, enjoy a relaxing and fulfilling time expressing yourself through art.", image: UIImage(named: "diy_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Picnic in the Park", fullName: "Picnic in the Park", afterName: "activity", description: "Plan a delightful picnic in the park. Pack your favorite snacks, bring a blanket, and enjoy a leisurely day outdoors surrounded by nature and good company.", image: UIImage(named: "picnic_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Book Club Meeting", fullName: "Book Club Meeting", afterName: "activity", description: "Gather with fellow book enthusiasts for a book club meeting. Discuss your latest literary discoveries, share insights, and immerse yourself in the world of captivating stories.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Fitness Challenge", fullName: "Fitness Challenge", afterName: "activity", description: "Embark on a fitness challenge to stay active and healthy. Whether it's a home workout, yoga session, or outdoor jog, make physical activity a fun and rewarding part of your routine.", image: UIImage(named: "fitness_placeholder") ?? UIImage(named: "placeholder_image")!),

                    FilterContent(primaryName: "Movie Marathon", fullName: "Movie Marathon", afterName: "activity", description: "Host a movie marathon with a selection of your favorite films. Grab some popcorn, create a cozy movie-watching setup, and enjoy a cinematic journey from the comfort of your home.", image: UIImage(named: "watch_placeholder") ?? UIImage(named: "placeholder_image")!),
                   FilterContent(primaryName: "Escape Room Experience", fullName: "Escape Room Experience", afterName: "activity", description: "Challenge yourselves with an escape room experience. Work together with a friend to solve puzzles and unlock mysteries. Test your teamwork and problem-solving skills for an exciting adventure.", image: UIImage(named: "friends_placeholder") ?? UIImage(named: "placeholder_image")!),
        ])
        ]
        
        let giftFilters = [
            
            Filter(filterName: "female", filterContents: [
            
            
                FilterContent(primaryName: "Elegant Orchid Jewelry Set", fullName: "Elegant Orchid Jewelry Set", afterName: "gift", description: "Surprise her with this exquisite jewelry set featuring delicate orchid motifs. The set includes a necklace, earrings, and a bracelet, adding a touch of elegance to any outfit.", image: UIImage(named: "giftf_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Luxurious Spa Day Experience", fullName: "Luxurious Spa Day Experience", afterName: "gift", description: "Treat her to a day of pampering and relaxation with a luxurious spa experience. From soothing massages to rejuvenating facials, this gift promises a blissful escape from the everyday hustle.", image: UIImage(named: "giftf_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Chic Leather Tote Bag", fullName: "Chic Leather Tote Bag", afterName: "gift", description: "Upgrade her style with a chic leather tote bag that seamlessly combines fashion and functionality. This versatile accessory is perfect for work, travel, or a day out on the town.", image: UIImage(named: "giftf_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Personalized Floral Scented Candle Set", fullName: "Personalized Floral Scented Candle Set", afterName: "gift", description: "Create a serene ambiance with a set of personalized floral scented candles. Each candle is carefully crafted with a unique floral fragrance, making it a thoughtful and aromatic gift.", image: UIImage(named: "giftf_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Artisanal Chocolate Truffle Collection", fullName: "Artisanal Chocolate Truffle Collection", afterName: "gift", description: "Indulge her sweet tooth with an exquisite collection of artisanal chocolate truffles. Handcrafted with premium ingredients, these delectable treats are a delightful way to satisfy her chocolate cravings.", image: UIImage(named: "giftf_placeholder") ?? UIImage(named: "placeholder_image")!),
            
            ]),
            
            Filter(filterName: "male", filterContents: [
            
                FilterContent(primaryName: "Classic Leather Wallet & Keychain Set", fullName: "Classic Leather Wallet & Keychain Set", afterName: "gift", description: "Upgrade his everyday essentials with this classic leather wallet and keychain set. Crafted for durability and style, it's a practical gift that adds a touch of sophistication to his daily routine.", image: UIImage(named: "giftm_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Tech Enthusiast's Gadget Organizer", fullName: "Tech Enthusiast's Gadget Organizer", afterName: "gift", description: "Keep his gadgets organized with a sleek and functional gadget organizer. Featuring multiple compartments, this gift is perfect for tech-savvy individuals who value both style and practicality.", image: UIImage(named: "giftm_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Adventure-Ready Portable Coffee Maker", fullName: "Adventure-Ready Portable Coffee Maker", afterName: "gift", description: "For the coffee aficionado with a sense of adventure, gift a portable coffee maker. Whether camping or traveling, this compact gadget ensures a quality cup of coffee on the go.", image: UIImage(named: "giftm_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Tailored Men's Grooming Kit", fullName: "Tailored Men's Grooming Kit", afterName: "gift", description: "Elevate his grooming routine with a tailored men's grooming kit. Packed with high-quality grooming essentials, this gift promises a refined and well-groomed look for any occasion.", image: UIImage(named: "giftm_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Premium Whiskey Tasting Set", fullName: "Premium Whiskey Tasting Set", afterName: "gift", description: "Indulge his taste for fine spirits with a premium whiskey tasting set. This sophisticated gift includes a selection of top-notch whiskies, offering a delightful experience for the whiskey connoisseur.", image: UIImage(named: "giftm_placeholder") ?? UIImage(named: "placeholder_image")!),

            ]),
            
            Filter(filterName: "Idontcare", filterContents: [
            
                FilterContent(primaryName: "Mystical Constellation Projector Lamp", fullName: "Mystical Constellation Projector Lamp", afterName: "gift", description: "Transform any room into a mesmerizing night sky with this constellation projector lamp. A unique and enchanting gift for those who appreciate a touch of magic in their living space.", image: UIImage(named: "gift_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Artisanal Handcrafted Soy Candle Set", fullName: "Artisanal Handcrafted Soy Candle Set", afterName: "gift", description: "Create a cozy atmosphere with this set of artisanal handcrafted soy candles. Each candle is thoughtfully made, filling the room with delightful scents and warm ambiance. A perfect gift for relaxation.", image: UIImage(named: "gift_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Personalized Star Map Print", fullName: "Personalized Star Map Print", afterName: "gift", description: "Celebrate a special moment with a personalized star map print. Capture the alignment of the stars on a significant date, creating a unique and sentimental piece of art. A meaningful gift for cherished memories.", image: UIImage(named: "gift_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Whimsical Succulent Terrarium Kit", fullName: "Whimsical Succulent Terrarium Kit", afterName: "gift", description: "Bring nature indoors with a whimsical succulent terrarium kit. An easy-to-assemble gift that adds a touch of greenery to any space, making it a delightful and low-maintenance present.", image: UIImage(named: "gift_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Interactive Puzzle Board Game", fullName: "Interactive Puzzle Board Game", afterName: "gift", description: "Challenge the mind with an interactive puzzle board game. Ideal for solo or group play, this gift combines entertainment and mental stimulation for hours of fun. A great way to unwind and bond with loved ones.", image: UIImage(named: "gift_placeholder") ?? UIImage(named: "placeholder_image")!),
            ])
        ]
        
        let listenFilters = [
            Filter(filterName: "rock music", filterContents: [
            
                FilterContent(primaryName: "Thunderstruck", fullName: "Thunderstruck", afterName: "song", description: "Experience the electrifying energy of AC/DC's 'Thunderstruck.' This iconic rock anthem is sure to get your adrenaline pumping with its powerful riffs and captivating rhythm.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),

                  FilterContent(primaryName: "Bohemian Rhapsody", fullName: "Bohemian Rhapsody by the Queen", afterName: "song", description: "Indulge in the operatic brilliance of Queen's 'Bohemian Rhapsody.' This genre-defying classic takes you on a musical journey, blending rock, ballad, and opera elements seamlessly.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),

                  FilterContent(primaryName: "Stairway to Heaven", fullName: "Stairway to Heaven by Led Zeppelin", afterName: "song", description: "Immerse yourself in the timeless allure of Led Zeppelin's 'Stairway to Heaven.' This epic rock masterpiece unfolds with enchanting guitar solos and poetic lyrics.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),

                  FilterContent(primaryName: "Sweet Child o' Mine", fullName: "Sweet Child o' Mine by Gun's N' Roses", afterName: "song", description: "Savor the iconic guitar riff and soulful vocals in Guns N' Roses' 'Sweet Child o' Mine.' This rock ballad remains a classic, resonating with generations of music enthusiasts.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),

                  FilterContent(primaryName: "Back in Black", fullName: "Back in Black by AC/DC", afterName: "song", description: "Feel the power of AC/DC's 'Back in Black,' a rock anthem known for its infectious energy and memorable guitar riffs. Let the music take you on a wild ride.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),
                  FilterContent(primaryName: "Comfortably Numb", fullName: "Comfortably Numb by Pink floyd", afterName: "song", description: "Embark on a surreal journey with Pink Floyd's 'Comfortably Numb.' Let the haunting melody and poignant lyrics transport you to a world of musical transcendence.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),

                  FilterContent(primaryName: "Light My Fire", fullName: "Light My Fire by the Doors", afterName: "song", description: "Immerse yourself in the psychedelic sounds of The Doors' 'Light My Fire.' This iconic track captures the essence of 1960s rock with its distinctive organ and Jim Morrison's charismatic vocals.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Holy Diver", fullName: "Holy Diver by Dio", afterName: "song", description: "Experience the powerful vocals and epic guitar riffs of Dio's 'Holy Diver.' This classic metal anthem will transport you to the realm of fantasy and heavy metal greatness.", image: UIImage(named: "rock_placeholder") ?? UIImage(named: "placeholder_image")!),

       ]),
            
            Filter(filterName: "pop music", filterContents: [
                
                FilterContent(primaryName: "Dancing Queen", fullName: "Dancing Queen by ABBA", afterName: "by ABBA", description: "Get ready to hit the dance floor with ABBA's timeless hit 'Dancing Queen.' This upbeat pop anthem will bring joy and energy to any occasion.", image: UIImage(named: "pop_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Shape of You", fullName: "Shape of You by Ed Sheeran", afterName: " by Ed Sheeran", description: "Ed Sheeran's 'Shape of You' is a chart-topping pop sensation that combines infectious beats with catchy lyrics. A modern classic for your playlist.",  image: UIImage(named: "pop_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Happy", fullName: "Happy by Pharell Williams", afterName: "by Pharell Williams", description: "Pharrell Williams' 'Happy' is a feel-good anthem that will instantly lift your spirits. Add this joyful tune to your playlist for an instant mood boost.",  image: UIImage(named: "pop_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Uptown Funk", fullName: "Uptown Funk by Bruno Mars", afterName: " by Bruno Mars", description: "Mark Ronson and Bruno Mars deliver a funky and energetic performance in 'Uptown Funk.' This song is a perfect choice to get the party started.",  image: UIImage(named: "pop_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Waka Waka (This Time for Africa)", fullName: "Waka Waka by Shakira", afterName: " by Shakira", description: "Shakira's 'Waka Waka' is a spirited anthem that captures the excitement of global celebrations. Dance to the rhythm of this infectious track.",  image: UIImage(named: "pop_placeholder") ?? UIImage(named: "placeholder_image")!),

            ]),
            
            Filter(filterName: "classical music", filterContents: [
            
                FilterContent(primaryName: "Eine kleine Nachtmusik", fullName: "Eine kleine Nachtmusik", afterName: "piece", description: "Mozart's 'Eine kleine Nachtmusik' is a delightful and uplifting chamber music masterpiece. Let the enchanting melodies of this composition transport you.",  image: UIImage(named: "classical_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Clair de Lune", fullName: "Clair de Lune", afterName: "piece", description: "Debussy's 'Clair de Lune' is a mesmerizing piano piece that evokes a sense of calm and beauty. Immerse yourself in the soothing atmosphere created by this timeless classic.", image: UIImage(named: "classical_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "The Four Seasons", fullName: "The Four Seasons", afterName: "piece", description: "Vivaldi's 'The Four Seasons' is a set of violin concertos that vividly captures the essence of each season. Experience the rich and expressive sounds of this iconic work.", image: UIImage(named: "classical_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Moonlight Sonata", fullName: "Moonlight Sonata", afterName: "piece", description: "Beethoven's 'Moonlight Sonata' is a hauntingly beautiful piano composition. Let the melancholic yet captivating melodies of this classical gem resonate with your emotions.", image: UIImage(named: "classical_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Carmen Suite No. 1", fullName: "Carmen Suite No. 1", afterName: "piece", description: "Bizet's 'Carmen Suite No. 1' features lively and passionate orchestral arrangements. Immerse yourself in the dramatic and expressive world of this beloved suite.", image: UIImage(named: "classical_placeholder") ?? UIImage(named: "placeholder_image")!),
]),
            
            Filter(filterName: "jazz music", filterContents: [
                
                FilterContent(primaryName: "Take Five", fullName: "Take Five", afterName: "song", description: "Dave Brubeck's 'Take Five' is a classic jazz piece known for its unique time signature and memorable saxophone melodies. Let the cool and sophisticated vibes of this iconic composition captivate you.", image: UIImage(named: "jazz_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "So What", fullName: "So What", afterName: "song", description: "Miles Davis's 'So What' is a cornerstone of modal jazz, featuring smooth improvisation and a laid-back atmosphere. Immerse yourself in the effortless brilliance of this jazz standard.", image: UIImage(named: "jazz_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Autumn Leaves", fullName: "Autumn Leaves", afterName: "song", description: "'Autumn Leaves' is a jazz standard with various interpretations. The melancholic and evocative melodies make it a timeless piece in the jazz repertoire. Explore different renditions of this classic.", image: UIImage(named: "jazz_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "A Love Supreme", fullName: "A Love Supreme", afterName: "album", description: "John Coltrane's 'A Love Supreme' is a groundbreaking jazz album, known for its spiritual and transcendent qualities. Immerse yourself in the profound and innovative sounds of Coltrane's masterpiece.", image: UIImage(named: "jazz_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Sing, Sing, Sing", fullName: "Sing, Sing, Sing", afterName: "song", description: "Benny Goodman's 'Sing, Sing, Sing' is a lively and energetic big band jazz piece. Let the infectious rhythm and dynamic arrangements of this classic swing tune lift your spirits.", image: UIImage(named: "jazz_placeholder") ?? UIImage(named: "placeholder_image")!),

            ]),
            
            Filter(filterName: "I don't care", filterContents: [
                
                FilterContent(primaryName: "Bohemian Rhapsody", fullName: "Bohemian Rhapsody", afterName: "song", description: "Queen's 'Bohemian Rhapsody' is a genre-defying masterpiece, blending rock, ballad, and opera elements. Experience the epic journey of this iconic song that continues to captivate audiences worldwide.", image: UIImage(named: "music_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Shape of You", fullName: "Shape of You", afterName: "song", description: "Ed Sheeran's 'Shape of You' is a chart-topping pop hit known for its catchy melody and infectious rhythm. Dive into the contemporary sounds of Sheeran's romantic and upbeat track.", image: UIImage(named: "music_placeholder") ?? UIImage(named: "placeholder_image")!),

                FilterContent(primaryName: "Billie Jean", fullName: "Billie Jean", afterName: "song", description: "Michael Jackson's 'Billie Jean' is a landmark in pop music, featuring his signature vocals and innovative production. Explore the timeless allure of this classic track that remains an essential part of music history.", image: UIImage(named: "music_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Blinding Lights", fullName: "Blinding Lights", afterName: "song", description: "The Weeknd's 'Blinding Lights' is a synth-pop anthem known for its retro-futuristic sound. Immerse yourself in the captivating blend of '80s-inspired beats and The Weeknd's soulful vocals.", image: UIImage(named: "music_placeholder") ?? UIImage(named: "placeholder_image")!),
                
                FilterContent(primaryName: "Smooth Operator", fullName: "Smooth Operator", afterName: "song", description: "Sade's 'Smooth Operator' is a smooth jazz and soul classic, characterized by Sade's sultry vocals and sophisticated arrangements. Let the timeless elegance of this song transport you to a world of effortless cool.", image: UIImage(named: "music_placeholder") ?? UIImage(named: "placeholder_image")!),
            ])
        ]
        
        let colorPaletteFilters = [
            
            Filter(filterName: "monochrome", filterContents: [
            
                FilterContent(primaryName: "Classic Monochrome", fullName: "Classic Monochrome", afterName: "color palette", description: "Embrace the timeless elegance of classic monochrome with this sophisticated palette. Featuring variations of black, gray, and white, it creates a refined and versatile look for any design.", image: placeholderImage),


                FilterContent(primaryName: "Moonlit Serenity", fullName: "Moonlit Serenity", afterName: "color palette", description: "Evoke a tranquil night under the moonlight with this serene monochrome palette. Shades of midnight black, soft grays, and silvery whites create a calming and sophisticated atmosphere.", image: placeholderImage),

                FilterContent(primaryName: "Minimalist Browns", fullName: "Minimalist Browns", afterName: "color palette", description: "Achieve a minimalist and chic aesthetic with this monochrome palette. These colors bring a sense of simplicity and modernity to your designs.", image: placeholderImage),

                FilterContent(primaryName: "Forest Greens", fullName: "Forest Greens", afterName: "color palette", description: "Experience the enduring charm of the nature with this timeless color palette.This color combination offers a range of tones for creating classic and versatile designs.", image: placeholderImage)
            
            ]),
            
            Filter(filterName: "warm tones", filterContents: [
                
                FilterContent(primaryName: "Autumn Glow", fullName: "Autumn Glow", afterName: "color palette", description: "Embrace the warmth of autumn with this color palette inspired by falling leaves. Featuring hues of rich orange, golden yellow, deep red, and earthy brown, it radiates the cozy and comforting vibes of the season.", image: placeholderImage),

                FilterContent(primaryName: "Sunset Serenity", fullName: "Sunset Serenity", afterName: "color palette", description: "Capture the tranquil beauty of a sunset with this serene color palette. From warm coral and peach tones to soothing lavender and deep indigo, these colors evoke the peaceful moments of dusk.", image: placeholderImage),

                FilterContent(primaryName: "Golden Hour", fullName: "Golden Hour", afterName: "color palette", description: "Experience the magic of the golden hour with this warm and inviting color palette. Featuring soft shades of amber, burnt sienna, and dusty rose, it brings the warmth and glow of a sun-kissed evening.", image: placeholderImage),

            ]),
            
            Filter(filterName: "cold tones", filterContents: [
                
                FilterContent(primaryName: "Arctic Breeze", fullName: "Arctic Breeze", afterName: "color palette", description: "Embrace the cool tranquility of the Arctic with this refreshing color palette. Featuring icy blues, frosty greens, and hints of lavender, it evokes the serene beauty of a crisp winter day.", image: placeholderImage),

                FilterContent(primaryName: "Winter Wonderland", fullName: "Winter Wonderland", afterName: "color palette", description: "Step into a winter wonderland with this enchanting color palette. Shades of frosty white, silver, and icy blues create a magical atmosphere reminiscent of snow-covered landscapes.", image: placeholderImage),

                FilterContent(primaryName: "Northern Lights Spectacle", fullName: "Northern Lights Spectacle", afterName: "color palette", description: "Capture the awe-inspiring beauty of the Northern Lights with this mesmerizing color palette. Deep indigo, emerald green, and violet hues dance across the palette, creating a celestial and enchanting feel.", image: placeholderImage),
            ]),
            
            Filter(filterName: "I don't care", filterContents: [
                
                FilterContent(primaryName: "Vibrant Carnival", fullName: "Vibrant Carnival", afterName: "color palette", description: "Infuse your designs with the lively spirit of a carnival. Bold reds, electric blues, and sunny yellows create a vibrant and energetic color palette that's perfect for festive occasions.", image: placeholderImage),

                FilterContent(primaryName: "Mystical Enchantment", fullName: "Mystical Enchantment", afterName: "color palette", description: "Embark on a journey of mystical enchantment with this ethereal color palette. Soft purples, deep blues, and shimmering golds evoke a sense of magic and wonder, adding a touch of fantasy to your designs.", image: placeholderImage),

                FilterContent(primaryName: "Tropical Paradise", fullName: "Tropical Paradise", afterName: "color palette", description: "Escape to a tropical paradise with this refreshing color palette. Lush greens, vibrant blues, and sunset oranges transport you to a sun-drenched oasis, perfect for designs inspired by nature and relaxation.", image: placeholderImage),

                FilterContent(primaryName: "Electric Neon Nights", fullName: "Electric Neon Nights", afterName: "color palette", description: "Illuminate your designs with the electrifying energy of neon lights. Neon pinks, electric blues, and bold yellows create a dynamic and modern color palette that's sure to make a statement.", image: placeholderImage),

                FilterContent(primaryName: "Pastel Dreamscape", fullName: "Pastel Dreamscape", afterName: "color palette", description: "Create a dreamy and soothing atmosphere with this pastel color palette. Soft pinks, calming blues, and minty greens come together to evoke a sense of serenity and tranquility in your designs.", image: placeholderImage)

            ])
        ]
        
        categories = [
                GeneralCategory(categoryName: "watch", categoryBeforeName: "randomize what to", description: "Let us help you decide what to watch, be it movies, anime, or TV-shows. We've got it all! Try it for yourself.", filters: watchFilters, symbolName: "sparkles.tv"),
                GeneralCategory(categoryName: "eat", categoryBeforeName: "randomize what to", description: "We will help you make a decision about your next meal. Can't decide? Try our randomizer!", filters: eatFilters, symbolName: "fork.knife"),
                GeneralCategory(categoryName: "cook", categoryBeforeName: "randomize what to", description: "Let's generate some recipes for you!", filters: cookFilters, symbolName: "stove.fill"),
                GeneralCategory(categoryName: "read", categoryBeforeName: "randomize what to read", description: "Let's find some good reads for you!", filters: readFilters, symbolName: "book.pages"),
                GeneralCategory(categoryName: "activity", categoryBeforeName: "randomize an", description: "Bored? We will give you some ideas for new exciting activities!", filters: activityFilters, symbolName: "figure.badminton"),
                GeneralCategory(categoryName: "gift", categoryBeforeName: "randomize what to", description: "Having trouble coming up with gift ideas? Let us help!", filters: giftFilters, symbolName: "app.gift.fill"),
                GeneralCategory(categoryName: "listen to", categoryBeforeName: "randomize what to", description: "Ready to dive into some exciting music? Let's randomize a new find!", filters: listenFilters, symbolName: "music.quarternote.3"),
                GeneralCategory(categoryName: "Color Palette", categoryBeforeName: "randomize a", description: "Choosing a color palette can be exhausting! Let us help!", filters: colorPaletteFilters, symbolName: "paintbrush.fill")
        ]
    }
}


        
