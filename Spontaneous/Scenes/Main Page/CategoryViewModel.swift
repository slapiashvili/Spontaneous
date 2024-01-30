//
//  CategoryViewModel.swift
//  Spontaneous
//
//  Created by Salome Lapiashvili on 29.01.24.
//

import UIKit

struct CategoryViewModel {
    var categories: [GeneralCategory] = []

    let placeholderImage = UIImage(named: "placeholder_image")!

    var watchFilterContents: [FilterContent] = []
    var eatFilterContent : [FilterContent] = []
    var activityFilterContent: [FilterContent] = []
    var listenFilterContent: [FilterContent] = []
    var colorPaletteFilterContent: [FilterContent] = []
    var giftFilterContent: [FilterContent] = []
    var readFilterContent: [FilterContent] = []
    var cookFilterContent: [FilterContent] = []
    
    
    init() {
        categories = [
            watchCategory,
            eatCategory,
            activityCategory,
            listenCategory,
            colorPaletteCategory,
            giftCategory,
            readCategory,
            cookCategory
        ]
        
        cookFilterContent = [
            
            FilterContent(primaryName: "Dairy-Free Tomato Basil Pasta", fullName: "Dairy-Free Tomato Basil Pasta", afterName: "recipe", description: "Ingredients: pasta, tomatoes, garlic, fresh basil, olive oil, pine nuts. Cook pasta. Sauté garlic in olive oil. Add chopped tomatoes and cook until softened. Toss with cooked pasta. Garnish with fresh basil and pine nuts.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Cauliflower Alfredo Sauce with Zoodles", fullName: "Dairy-Free Cauliflower Alfredo Sauce with Zoodles", afterName: "recipe", description: "Ingredients: cauliflower, garlic, almond milk, nutritional yeast, zucchini noodles. Steam cauliflower and blend with garlic, almond milk, and nutritional yeast. Pour over zucchini noodles. Enjoy a creamy, dairy-free Alfredo.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Avocado Chocolate Mousse", fullName: "Dairy-Free Avocado Chocolate Mousse", afterName: "recipe", description: "Ingredients: avocados, cocoa powder, maple syrup, almond milk. Blend avocados, cocoa powder, maple syrup, and almond milk until smooth. Chill in the refrigerator. Indulge in a rich and creamy chocolate mousse.", filter: "Dairy-free", image: placeholderImage),
            
            FilterContent(primaryName: "Dairy-Free Thai Coconut Curry", fullName: "Dairy-Free Thai Coconut Curry", afterName: "recipe", description: "Ingredients: tofu, broccoli, bell peppers, coconut milk, red curry paste, ginger, garlic. Sauté tofu, ginger, and garlic. Add coconut milk and red curry paste. Simmer with vegetables until cooked. Serve over rice.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Spinach and Sun-Dried Tomato Stuffed Mushrooms", fullName: "Dairy-Free Spinach and Sun-Dried Tomato Stuffed Mushrooms", afterName: "recipe", description: "Ingredients: mushrooms, spinach, sun-dried tomatoes, garlic, breadcrumbs. Remove mushroom stems and stuff with sautéed spinach, sun-dried tomatoes, and breadcrumbs. Bake until mushrooms are tender.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Lemon Garlic Roasted Potatoes", fullName: "Dairy-Free Lemon Garlic Roasted Potatoes", afterName: "recipe", description: "Ingredients: potatoes, lemon, garlic, olive oil, herbs. Toss potatoes with lemon, garlic, and herbs. Roast until golden brown. Enjoy flavorful and crispy roasted potatoes without dairy.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Vegetable Spring Rolls with Peanut Sauce", fullName: "Dairy-Free Vegetable Spring Rolls with Peanut Sauce", afterName: "recipe", description: "Ingredients: rice paper, lettuce, carrots, cucumbers, vermicelli noodles, peanut sauce. Assemble spring rolls with fresh vegetables and noodles. Dip in dairy-free peanut sauce for a tasty snack or appetizer.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Mediterranean Quinoa Stuffed Bell Peppers", fullName: "Dairy-Free Mediterranean Quinoa Stuffed Bell Peppers", afterName: "recipe", description: "Ingredients: bell peppers, quinoa, chickpeas, cherry tomatoes, Kalamata olives, olive oil, lemon juice. Cook quinoa. Mix with chickpeas, tomatoes, olives, and lemon dressing. Stuff bell peppers. Bake until peppers are tender.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Spicy Black Bean and Corn Salsa", fullName: "Dairy-Free Spicy Black Bean and Corn Salsa", afterName: "recipe", description: "Ingredients: black beans, corn, tomatoes, red onion, jalapeño, lime juice, cilantro. Mix black beans, corn, diced tomatoes, onion, jalapeño, lime juice, and cilantro. Serve as a refreshing salsa without dairy.", filter: "Dairy-free", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Coconut Lime Chia Pudding", fullName: "Dairy-Free Coconut Lime Chia Pudding", afterName: "recipe", description: "Ingredients: chia seeds, coconut milk, lime zest, maple syrup. Mix chia seeds with coconut milk, lime zest, and sweeten with maple syrup. Refrigerate until the pudding sets. Enjoy a dairy-free and nutritious dessert.", filter: "Dairy-free", image: placeholderImage),

        
            FilterContent(primaryName: "Gluten-Free Quinoa Salad", fullName: "Gluten-Free Quinoa Salad", afterName: "recipe", description: "Ingredients: quinoa, cherry tomatoes, cucumbers, red bell pepper, feta cheese, olives, olive oil, lemon juice, herbs. Cook quinoa. Mix with chopped vegetables, feta, and olives. Drizzle with olive oil and lemon juice. Garnish with herbs.", filter: "Gluten-free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Chickpea Pasta with Pesto", fullName: "Gluten-Free Chickpea Pasta with Pesto", afterName: "recipe", description: "Ingredients: gluten-free chickpea pasta, cherry tomatoes, basil pesto, pine nuts, Parmesan cheese. Cook chickpea pasta. Toss with halved cherry tomatoes, basil pesto, and toasted pine nuts. Sprinkle with Parmesan.",  filter: "Gluten-free",image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Zucchini Noodles with Avocado Sauce", fullName: "Gluten-Free Zucchini Noodles with Avocado Sauce", afterName: "recipe", description: "Ingredients: zucchini, cherry tomatoes, avocado, garlic, lime, cilantro. Spiralize zucchini into noodles. Blend avocado, garlic, lime juice, and cilantro into a creamy sauce. Toss zucchini noodles with sauce and halved cherry tomatoes.",  filter: "Gluten-free",image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Quinoa Pizza Crust", fullName: "Gluten-Free Quinoa Pizza Crust", afterName: "recipe", description: "Ingredients: quinoa, water, baking powder, salt, Italian herbs. Blend quinoa, water, baking powder, and salt. Pour batter onto a pizza pan. Sprinkle with Italian herbs. Bake until golden. Add your favorite gluten-free toppings.", filter: "Gluten-free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Stuffed Bell Peppers with Ground Turkey", fullName: "Gluten-Free Stuffed Bell Peppers with Ground Turkey", afterName: "recipe", description: "Ingredients: bell peppers, ground turkey, quinoa, black beans, corn, salsa, cumin, chili powder. Cook quinoa. Brown ground turkey. Mix with cooked quinoa, black beans, corn, salsa, cumin, and chili powder. Stuff bell peppers. Bake until peppers are tender.", filter: "Gluten-free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Cauliflower Crust Margherita Pizza", fullName: "Gluten-Free Cauliflower Crust Margherita Pizza", afterName: "recipe", description: "Ingredients: cauliflower, eggs, mozzarella cheese, tomato sauce, fresh mozzarella, tomatoes, basil. Rice cauliflower. Mix with eggs and mozzarella. Press into a crust. Bake until golden. Top with tomato sauce, fresh mozzarella, tomatoes, and basil.",  filter: "Gluten-free",image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Lemon Garlic Shrimp Quinoa", fullName: "Gluten-Free Lemon Garlic Shrimp Quinoa", afterName: "recipe", description: "Ingredients: quinoa, shrimp, garlic, lemon, cherry tomatoes, spinach. Cook quinoa. Sauté shrimp with garlic. Mix with cooked quinoa, lemon juice, halved cherry tomatoes, and spinach. Serve warm.",  filter: "Gluten-free",image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Banana Pancakes", fullName: "Gluten-Free Banana Pancakes", afterName: "recipe", description: "Ingredients: gluten-free flour, ripe bananas, almond milk, eggs, baking powder, vanilla extract. Mash bananas. Mix with gluten-free flour, almond milk, eggs, baking powder, and vanilla extract. Cook as pancakes. Serve with your favorite toppings.",  filter: "Gluten-free",image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Chicken and Vegetable Stir-Fry", fullName: "Gluten-Free Chicken and Vegetable Stir-Fry", afterName: "recipe", description: "Ingredients: chicken breast, broccoli, bell peppers, carrots, gluten-free soy sauce, ginger. Slice chicken. Stir-fry with vegetables in gluten-free soy sauce and ginger until cooked through. Serve over rice or gluten-free noodles.", filter: "Gluten-free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Chocolate Avocado Mousse", fullName: "Gluten-Free Chocolate Avocado Mousse", afterName: "recipe", description: "Ingredients: avocados, cocoa powder, maple syrup, vanilla extract, almond milk. Blend avocados, cocoa powder, maple syrup, vanilla extract, and almond milk until smooth. Chill in the refrigerator. Serve as a rich and creamy dessert.", filter: "Gluten-free", image: placeholderImage),
            
            FilterContent(primaryName: "Vegetarian Quinoa Salad with Roasted Vegetables", fullName: "Vegetarian Quinoa Salad with Roasted Vegetables", afterName: "recipe", description: "Ingredients: quinoa, bell peppers, zucchini, cherry tomatoes, red onion, feta cheese, olive oil, balsamic vinegar, herbs. Cook quinoa. Roast vegetables. Mix with quinoa, feta, and dressing. Serve chilled.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Lentil Soup", fullName: "Vegetarian Lentil Soup", afterName: "recipe", description: "Ingredients: green lentils, carrots, celery, onion, garlic, vegetable broth, tomatoes, cumin, coriander. Sauté onions, garlic, and veggies. Add lentils, broth, and tomatoes. Season with cumin and coriander. Simmer until lentils are tender.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Spinach and Ricotta Stuffed Shells", fullName: "Vegetarian Spinach and Ricotta Stuffed Shells", afterName: "recipe", description: "Ingredients: jumbo pasta shells, spinach, ricotta cheese, mozzarella cheese, marinara sauce, garlic, herbs. Cook pasta. Mix spinach, ricotta, mozzarella, garlic, and herbs. Stuff shells. Bake with marinara sauce.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Eggplant Parmesan", fullName: "Vegetarian Eggplant Parmesan", afterName: "recipe", description: "Ingredients: eggplant, breadcrumbs, marinara sauce, mozzarella cheese, Parmesan cheese, basil. Coat eggplant in breadcrumbs. Bake until crispy. Layer with marinara sauce, mozzarella, and Parmesan. Bake until cheese melts. Garnish with fresh basil.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Black Bean Tacos", fullName: "Vegetarian Black Bean Tacos", afterName: "recipe", description: "Ingredients: black beans, corn tortillas, avocado, salsa, lime, cilantro. Heat black beans. Assemble tacos with beans, sliced avocado, salsa, and a squeeze of lime. Garnish with fresh cilantro.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Mushroom Risotto", fullName: "Vegetarian Mushroom Risotto", afterName: "recipe", description: "Ingredients: Arborio rice, mushrooms, vegetable broth, white wine, Parmesan cheese, onion, garlic. Sauté onion and garlic. Add rice and mushrooms. Deglaze with white wine. Cook risotto, adding broth gradually. Stir in Parmesan.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Pesto Pasta with Cherry Tomatoes", fullName: "Vegetarian Pesto Pasta with Cherry Tomatoes", afterName: "recipe", description: "Ingredients: pasta, cherry tomatoes, pesto sauce, pine nuts, Parmesan cheese. Cook pasta. Toss with halved cherry tomatoes, pesto, and toasted pine nuts. Sprinkle with Parmesan.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Sweet Potato and Black Bean Burritos", fullName: "Vegetarian Sweet Potato and Black Bean Burritos", afterName: "recipe", description: "Ingredients: sweet potatoes, black beans, tortillas, salsa, avocado, cilantro. Roast sweet potatoes. Mash black beans. Assemble burritos with sweet potatoes, black beans, salsa, sliced avocado, and cilantro.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Greek Quinoa Salad", fullName: "Vegetarian Greek Quinoa Salad", afterName: "recipe", description: "Ingredients: quinoa, cherry tomatoes, cucumber, Kalamata olives, feta cheese, red onion, Greek dressing. Cook quinoa. Mix with chopped vegetables, olives, feta, and dressing. Serve as a refreshing salad.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Stuffed Bell Peppers with Quinoa", fullName: "Vegetarian Stuffed Bell Peppers with Quinoa", afterName: "recipe", description: "Ingredients: bell peppers, quinoa, black beans, corn, tomatoes, Mexican spices, cheese. Cook quinoa. Mix with black beans, corn, tomatoes, and spices. Stuff bell peppers. Bake until peppers are tender. Sprinkle with cheese.", filter: "Vegetarian", image: placeholderImage),
            
            FilterContent(primaryName: "Vegan Chickpea Curry", fullName: "Vegan Chickpea Curry", afterName: "recipe", description: "Ingredients: chickpeas, coconut milk, tomatoes, onions, garlic, ginger, curry spices. To prepare, sauté onions, garlic, and ginger. Add tomatoes, coconut milk, and chickpeas. Simmer until chickpeas are tender. Season with curry spices. Serve over rice or quinoa.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Lentil and Vegetable Stir-Fry", fullName: "Vegan Lentil and Vegetable Stir-Fry", afterName: "recipe", description: "Ingredients: green lentils, broccoli, bell peppers, carrots, soy sauce, garlic, ginger. Sauté garlic and ginger. Add lentils and stir-fry with vegetables in soy sauce until tender. Serve over rice or noodles.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Roasted Vegetable Buddha Bowl", fullName: "Vegan Roasted Vegetable Buddha Bowl", afterName: "recipe", description: "Ingredients: quinoa, roasted sweet potatoes, Brussels sprouts, avocado, tahini dressing. Cook quinoa. Roast sweet potatoes and Brussels sprouts. Assemble bowl with quinoa, roasted veggies, sliced avocado. Drizzle with tahini dressing.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Avocado and Black Bean Wrap", fullName: "Vegan Avocado and Black Bean Wrap", afterName: "recipe", description: "Ingredients: black beans, avocado, tomatoes, lettuce, whole wheat wraps, salsa. Mash black beans and avocado. Assemble wraps with mashed mixture, sliced tomatoes, lettuce. Top with salsa.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Quinoa and Chickpea Salad", fullName: "Vegan Quinoa and Chickpea Salad", afterName: "recipe", description: "Ingredients: quinoa, chickpeas, cucumber, cherry tomatoes, red onion, olives, olive oil, lemon juice, herbs. Cook quinoa. Mix with chickpeas, chopped vegetables, olives, dressing. Serve as a refreshing salad.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Sweet Potato and Black Bean Chili", fullName: "Vegan Sweet Potato and Black Bean Chili", afterName: "recipe", description: "Ingredients: sweet potatoes, black beans, tomatoes, onions, garlic, chili spices. Sauté onions and garlic. Add sweet potatoes, tomatoes, black beans, and spices. Simmer until sweet potatoes are tender. Serve with your favorite toppings.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Spinach and Mushroom Stuffed Bell Peppers", fullName: "Vegan Spinach and Mushroom Stuffed Bell Peppers", afterName: "recipe", description: "Ingredients: bell peppers, spinach, mushrooms, quinoa, nutritional yeast, garlic. Cook quinoa. Sauté mushrooms, spinach, and garlic. Mix with quinoa and nutritional yeast. Stuff bell peppers. Bake until peppers are tender.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Coconut and Lime Cauliflower Rice", fullName: "Vegan Coconut and Lime Cauliflower Rice", afterName: "recipe", description: "Ingredients: cauliflower rice, coconut milk, lime, cilantro, peanuts. Cook cauliflower rice. Mix with coconut milk, lime juice, and cilantro. Garnish with peanuts. Serve as a flavorful side dish.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Teriyaki Tofu Stir-Fry", fullName: "Vegan Teriyaki Tofu Stir-Fry", afterName: "recipe", description: "Ingredients: tofu, broccoli, bell peppers, carrots, teriyaki sauce, sesame oil. Press tofu and cut into cubes. Stir-fry with vegetables in sesame oil and teriyaki sauce until tofu is golden and veggies are tender. Serve over rice.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Mediterranean Quinoa Bowl", fullName: "Vegan Mediterranean Quinoa Bowl", afterName: "recipe", description: "Ingredients: quinoa, chickpeas, cherry tomatoes, cucumber, Kalamata olives, red onion, hummus. Cook quinoa. Mix with chickpeas, chopped vegetables, and olives. Serve in a bowl with a dollop of hummus.", filter: "Vegan", image: placeholderImage)
        ]
        
        readFilterContent = [
            
            FilterContent(primaryName: "To Kill a Mockingbird", fullName: "To Kill a Mockingbird by Harper Lee", afterName: "book", description: "A powerful exploration of racial injustice and moral growth in the American South during the 1930s.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "1984", fullName: "1984 by George Orwell", afterName: "book", description: "A chilling portrayal of a totalitarian society where individualism is suppressed, and government surveillance is omnipresent.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "The Great Gatsby", fullName: "The Great Gatsby by F. Scott Fitzgerald", afterName: "book", description: "Set in the Roaring Twenties, it follows the enigmatic Jay Gatsby and explores themes of wealth, love, and the American Dream.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "The Hitchhiker's Guide to the Galaxy", fullName: "The Hitchhiker's Guide to the Galaxy by Douglas Adams", afterName: "book", description: "A humorous and absurd journey through space, following Arthur Dent as he navigates the galaxy with an eclectic group of characters.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Pride and Prejudice", fullName: "Pride and Prejudice by Jane Austen", afterName: "book", description: "A timeless tale of love, manners, and societal expectations as Elizabeth Bennet navigates the challenges of class and relationships.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "One Hundred Years of Solitude", fullName: "One Hundred Years of Solitude by Gabriel García Márquez", afterName: "book", description: "A multi-generational saga that blends reality and fantasy, exploring the history of the Buendía family in the fictional town of Macondo.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "The Catcher in the Rye", fullName: "The Catcher in the Rye by J.D. Salinger", afterName: "book", description: "The narrative of Holden Caulfield, a disenchanted teenager navigating the challenges of adolescence and the adult world.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "The Lord of the Rings", fullName: "The Lord of the Rings by J.R.R. Tolkien", afterName: "book", description: "An epic fantasy trilogy that follows the quest to destroy the One Ring and save Middle-earth from the dark forces of Sauron.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Crime and Punishment", fullName: "Crime and Punishment by Fyodor Dostoevsky", afterName: "book", description: "A gripping exploration of morality, guilt, and redemption as Raskolnikov grapples with the consequences of committing a heinous crime.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "The Hunger Games", fullName: "The Hunger Games by Suzanne Collins", afterName: "book", description: "In a dystopian future, Katniss Everdeen must navigate a deadly televised competition known as the Hunger Games to survive and protect her loved ones.", filter: "books", image: placeholderImage),
            
            FilterContent(primaryName: "A Silent Voice", fullName: "A Silent Voice by Yoshitoki Oima", afterName: "manga", description: "A touching story of redemption and forgiveness centered around a former bully and a deaf girl, exploring themes of friendship and self-discovery.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Vinland Saga", fullName: "Vinland Saga by Makoto Yukimura", afterName: "manga", description: "Set in the Viking Age, this historical manga follows the journey of Thorfinn, a young warrior seeking revenge and grappling with the harsh realities of war.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Golden Kamuy", fullName: "Golden Kamuy by Satoru Noda", afterName: "manga", description: "An adventure manga set in post-war Hokkaido, where a former soldier and an Ainu girl embark on a treasure hunt, encountering various characters and challenges.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "The Promised Neverland", fullName: "The Promised Neverland by Kaiu Shirai", afterName: "manga", description: "A suspenseful and psychological thriller where a group of orphans discovers the dark secrets behind their seemingly idyllic orphanage.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Dorohedoro", fullName: "Dorohedoro by Q Hayashida", afterName: "manga", description: "A surreal and gritty manga following the adventures of Caiman, a man with a lizard head, as he navigates a bizarre world of magic users and mysteries.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Land of the Lustrous", fullName: "Land of the Lustrous by Haruko Ichikawa", afterName: "manga", description: "A visually stunning manga set in a world where humanoid gems must defend themselves against mysterious creatures while exploring themes of identity and purpose.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "March Comes in Like a Lion", fullName: "March Comes in Like a Lion by Chica Umino", afterName: "manga", description: "A heartfelt manga depicting the life of Rei Kiriyama, a professional shogi player, as he grapples with personal struggles and forms connections with others.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Made in Abyss", fullName: "Made in Abyss by Akihito Tsukushi", afterName: "manga", description: "A fantasy manga following the adventures of two children, Riko and Reg, as they journey into the mysterious and perilous Abyss in search of Riko's missing mother.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Kaiji", fullName: "Kaiji by Nobuyuki Fukumoto", afterName: "manga", description: "A psychological thriller manga where Kaiji Itou, a down-and-out gambler, faces high-stakes games and challenges that test his wits and determination.", filter: "books", image: placeholderImage),

            FilterContent(primaryName: "Houseki no Kuni (Land of the Lustrous)", fullName: "Houseki no Kuni (Land of the Lustrous) by Haruko Ichikawa", afterName: "manga", description: "A unique manga set in a world where anthropomorphic gems must defend against mysterious creatures, exploring themes of identity, purpose, and survival.", filter: "books", image: placeholderImage),
            
            FilterContent(primaryName: "Quantum Entanglement: A Fundamental Aspect of Quantum Physics", fullName: "Exploring Quantum Entanglement: Unraveling the Intricacies of Quantum Physics", afterName: "scientific article", description: "Delve into the phenomenon of quantum entanglement, a cornerstone of quantum mechanics, and its implications for our understanding of particle behavior.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "CRISPR-Cas9: Revolutionizing Genome Editing", fullName: "CRISPR-Cas9: The Revolutionary Genome Editing Tool", afterName: "scientific article", description: "Explore the groundbreaking CRISPR-Cas9 technology and its potential applications in precise genome editing, revolutionizing genetic research and medical interventions.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Dark Matter: Unveiling the Cosmic Mystery", fullName: "Unraveling Dark Matter: A Journey into the Cosmic Unknown", afterName: "scientific article", description: "Venture into the enigmatic realm of dark matter, investigating its elusive nature and its role in shaping the cosmos as we know it.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Neuroplasticity: The Adaptable Brain", fullName: "Neuroplasticity: Understanding the Adaptable Brain", afterName: "scientific article", description: "Explore the concept of neuroplasticity, the brain's remarkable ability to reorganize itself, and its implications for learning, memory, and rehabilitation.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Artificial Intelligence in Healthcare: Current Trends and Future Prospects", fullName: "AI in Healthcare: Current Trends and Future Prospects", afterName: "scientific article", description: "Examine the current landscape of artificial intelligence applications in healthcare, from diagnostics to personalized treatment, and anticipate future advancements in the field.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Climate Change and Biodiversity Loss: A Global Crisis", fullName: "Global Crisis: Climate Change and Biodiversity Loss", afterName: "scientific article", description: "Address the critical issues of climate change and biodiversity loss, investigating their interconnected impact on ecosystems and the urgent need for conservation efforts.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Advancements in Quantum Computing: From Theory to Practice", fullName: "Quantum Computing Advancements: Bridging Theory and Practice", afterName: "scientific article", description: "Survey the latest advancements in the field of quantum computing, exploring theoretical breakthroughs and practical implementations that could revolutionize computation.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Genomic Medicine: Paving the Way for Personalized Healthcare", fullName: "Genomic Medicine: Personalized Healthcare Revolution", afterName: "scientific article", description: "Examine the transformative potential of genomic medicine in tailoring healthcare strategies to individual genetic profiles, promising a new era of personalized treatment.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "The Microbiome and Human Health: A Symbiotic Relationship", fullName: "Microbiome and Human Health: Symbiotic Relationship Unveiled", afterName: "scientific article", description: "Investigate the intricate connection between the human microbiome and overall health, exploring the role of gut bacteria in immune function, metabolism, and disease prevention.", filter: "scientific articles", image: placeholderImage),

            FilterContent(primaryName: "Quantum Dots: Illuminating the Future of Display Technology", fullName: "Quantum Dots: Future of Display Technology Illuminated", afterName: "scientific article", description: "Explore the applications of quantum dots in display technology, unlocking brighter, more vibrant displays with potential breakthroughs in imaging and communication devices.", filter: "scientific articles", image: placeholderImage)
        ]
        
        giftFilterContent = [
            FilterContent(primaryName: "Luxurious Spa Set", fullName: "Pampering Spa Gift Set", afterName: "gift", description: "Treat her to a luxurious spa experience at home with a curated gift set featuring scented candles, bath salts, and skincare essentials.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Chic Jewelry Collection", fullName: "Elegant Jewelry Collection", afterName: "gift", description: "Elevate her style with a collection of chic jewelry pieces, from timeless earrings to delicate necklaces, adding a touch of elegance to her wardrobe.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Customized Beauty Box", fullName: "Personalized Beauty Box Subscription", afterName: "gift", description: "Surprise her with a monthly beauty box subscription tailored to her preferences, delivering a variety of skincare and makeup products.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Fashionable Handbag", fullName: "Stylish Handbag or Tote", afterName: "gift", description: "Gift her a fashionable handbag or tote that complements her style, providing both functionality and a touch of sophistication.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Gourmet Chocolate Assortment", fullName: "Artisanal Chocolate Assortment", afterName: "gift", description: "Indulge her sweet tooth with a curated assortment of gourmet chocolates, featuring a variety of flavors and exquisite packaging.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Cozy Cashmere Blanket", fullName: "Cashmere Blanket or Shawl", afterName: "gift", description: "Wrap her in warmth and luxury with a cozy cashmere blanket or shawl, perfect for chilly evenings and stylish lounging.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Botanical Garden Experience", fullName: "Botanical Garden Membership", afterName: "gift", description: "Create lasting memories with a membership to a local botanical garden, allowing her to enjoy the beauty of nature throughout the year.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Elegant Perfume Set", fullName: "Designer Perfume Gift Set", afterName: "gift", description: "Gift her an elegant set of designer perfumes, featuring a collection of exquisite scents for different occasions.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Yoga and Wellness Kit", fullName: "Yoga and Wellness Essentials Kit", afterName: "gift", description: "Support her well-being with a kit containing yoga essentials, meditation tools, and wellness items to enhance her self-care routine.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Culinary Adventure Class", fullName: "Culinary Adventure Class Voucher", afterName: "gift", description: "Inspire her culinary skills with a voucher for a unique culinary adventure class, offering hands-on experiences and gourmet delights.", filter: "female", image: placeholderImage),
            
            FilterContent(primaryName: "Luxurious Spa Set", fullName: "Pampering Spa Gift Set", afterName: "gift", description: "Treat her to a luxurious spa experience at home with a curated gift set featuring scented candles, bath salts, and skincare essentials.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Chic Jewelry Collection", fullName: "Elegant Jewelry Collection", afterName: "gift", description: "Elevate her style with a collection of chic jewelry pieces, from timeless earrings to delicate necklaces, adding a touch of elegance to her wardrobe.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Customized Beauty Box", fullName: "Personalized Beauty Box Subscription", afterName: "gift", description: "Surprise her with a monthly beauty box subscription tailored to her preferences, delivering a variety of skincare and makeup products.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Fashionable Handbag", fullName: "Stylish Handbag or Tote", afterName: "gift", description: "Gift her a fashionable handbag or tote that complements her style, providing both functionality and a touch of sophistication.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Gourmet Chocolate Assortment", fullName: "Artisanal Chocolate Assortment", afterName: "gift", description: "Indulge her sweet tooth with a curated assortment of gourmet chocolates, featuring a variety of flavors and exquisite packaging.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Cozy Cashmere Blanket", fullName: "Cashmere Blanket or Shawl", afterName: "gift", description: "Wrap her in warmth and luxury with a cozy cashmere blanket or shawl, perfect for chilly evenings and stylish lounging.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Botanical Garden Experience", fullName: "Botanical Garden Membership", afterName: "gift", description: "Create lasting memories with a membership to a local botanical garden, allowing her to enjoy the beauty of nature throughout the year.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Elegant Perfume Set", fullName: "Designer Perfume Gift Set", afterName: "gift", description: "Gift her an elegant set of designer perfumes, featuring a collection of exquisite scents for different occasions.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Yoga and Wellness Kit", fullName: "Yoga and Wellness Essentials Kit", afterName: "gift", description: "Support her well-being with a kit containing yoga essentials, meditation tools, and wellness items to enhance her self-care routine.", filter: "female", image: placeholderImage),

            FilterContent(primaryName: "Culinary Adventure Class", fullName: "Culinary Adventure Class Voucher", afterName: "gift", description: "Inspire her culinary skills with a voucher for a unique culinary adventure class, offering hands-on experiences and gourmet delights.", filter: "female", image: placeholderImage)
        ]
        
        
        colorPaletteFilterContent = [
            
            FilterContent(primaryName: "Classic Black & White", fullName: "Classic Black & White Palette", afterName: "color palette", description: "Timeless elegance with a classic black and white palette, creating a sophisticated and versatile color scheme.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Gray Scale Harmony", fullName: "Gray Scale Harmony Palette", afterName: "color palette", description: "Explore the subtleties of gray with a harmonious grayscale palette, offering a refined and balanced color scheme.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Midnight Noir", fullName: "Midnight Noir Palette", afterName: "color palette", description: "Embrace the mystery of midnight with deep blacks and inky blues, creating a dramatic and intriguing monochrome palette.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Pure White Serenity", fullName: "Pure White Serenity Palette", afterName: "color palette", description: "Achieve serenity with a palette of pure whites and soft creams, creating a clean and calming monochrome scheme.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Silver Lining Chic", fullName: "Silver Lining Chic Palette", afterName: "color palette", description: "Elevate your style with silver accents against a backdrop of grays, creating a chic and modern monochrome palette.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Ebony Elegance", fullName: "Ebony Elegance Palette", afterName: "color palette", description: "Experience timeless elegance with rich ebony tones, creating a sophisticated and luxurious monochrome palette.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Pristine Pearl Harmony", fullName: "Pristine Pearl Harmony Palette", afterName: "color palette", description: "Delicate beauty in a palette of pristine whites and pearly grays, creating a soft and refined monochrome scheme.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Charcoal Contrast", fullName: "Charcoal Contrast Palette", afterName: "color palette", description: "Explore the drama of contrast with deep charcoals and light grays, creating a bold and striking monochrome palette.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Inkwell Inspiration", fullName: "Inkwell Inspiration Palette", afterName: "color palette", description: "Draw inspiration from inkwells with deep blacks and muted grays, creating a moody and artistic monochrome scheme.", filter: "monochrome", image: placeholderImage),

            FilterContent(primaryName: "Snowflake Whispers", fullName: "Snowflake Whispers Palette", afterName: "color palette", description: "Whispering tranquility with a palette of icy whites and cool grays, creating a serene and wintery monochrome scheme.", filter: "monochrome", image: placeholderImage),
            
            FilterContent(primaryName: "Sunset Bliss", fullName: "Sunset Bliss Palette", afterName: "color palette", description: "Warm tones inspired by the vibrant hues of a breathtaking sunset, featuring rich oranges, pinks, and deep purples.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Golden Harvest", fullName: "Golden Harvest Palette", afterName: "color palette", description: "A warm and earthy palette reminiscent of golden autumn fields, with hues of amber, ochre, and rustic browns.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Desert Mirage", fullName: "Desert Mirage Palette", afterName: "color palette", description: "Capture the warmth of a desert landscape with sandy beige, terracotta, and warm coral tones, creating a serene and inviting palette.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Spiced Chai Delight", fullName: "Spiced Chai Delight Palette", afterName: "color palette", description: "A cozy and comforting palette inspired by spiced chai tea, featuring warm cinnamon, creamy neutrals, and deep caramel tones.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Autumn Leaves", fullName: "Autumn Leaves Palette", afterName: "color palette", description: "Embrace the beauty of fall with warm hues of burnt orange, fiery reds, and golden yellows, echoing the colors of autumn leaves.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Sunny Citrus Burst", fullName: "Sunny Citrus Burst Palette", afterName: "color palette", description: "Infuse energy with a burst of sunny citrus colors, featuring vibrant yellows, tangy oranges, and zesty lemon tones.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Cozy Fireside Glow", fullName: "Cozy Fireside Glow Palette", afterName: "color palette", description: "Create a warm and inviting atmosphere with the glow of a fireside, featuring deep reds, warm browns, and hints of gold.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Tuscan Sun Retreat", fullName: "Tuscan Sun Retreat Palette", afterName: "color palette", description: "Transport yourself to a Tuscan sun retreat with warm terracotta, sun-kissed yellows, and olive green tones, evoking Mediterranean warmth.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Harvest Festival", fullName: "Harvest Festival Palette", afterName: "color palette", description: "Celebrate the harvest season with warm and comforting tones, featuring pumpkin oranges, deep burgundies, and rustic golds.", filter: "warm tones", image: placeholderImage),

            FilterContent(primaryName: "Vintage Rose Elegance", fullName: "Vintage Rose Elegance Palette", afterName: "color palette", description: "Evoke vintage elegance with warm and muted rose tones, combined with soft creams and antique gold for a timeless palette.", filter: "warm tones", image: placeholderImage),
            
            FilterContent(primaryName: "Arctic Frost", fullName: "Arctic Frost Palette", afterName: "color palette", description: "Capture the icy beauty of the Arctic with cool blues, frosty whites, and shimmering silver tones for a serene and tranquil palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Icy Wonderland", fullName: "Icy Wonderland Palette", afterName: "color palette", description: "Step into an enchanting winter wonderland with icy blues, snowy whites, and hints of frosty lavender, creating a magical and ethereal palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Frozen Lake Serenity", fullName: "Frozen Lake Serenity Palette", afterName: "color palette", description: "Embrace the calmness of a frozen lake with cool aqua blues, deep indigos, and frosty grays, creating a serene and peaceful palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Polar Night Dreams", fullName: "Polar Night Dreams Palette", afterName: "color palette", description: "Inspired by the polar night, featuring midnight blues, velvety purples, and hints of celestial silver, creating a mysterious and dreamy palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Northern Lights Magic", fullName: "Northern Lights Magic Palette", afterName: "color palette", description: "Channel the enchantment of the Northern Lights with mesmerizing hues of green, blue, and violet, creating a magical and vibrant palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Frosty Elegance", fullName: "Frosty Elegance Palette", afterName: "color palette", description: "Evoke a sense of elegance with frosty blues, silvery grays, and soft lavender tones, creating a sophisticated and icy palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Glacial Mist Delight", fullName: "Glacial Mist Delight Palette", afterName: "color palette", description: "Experience the beauty of glacial mist with soft blues, misty grays, and delicate lavender tones, creating a tranquil and ethereal palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Winter Morning Hues", fullName: "Winter Morning Hues Palette", afterName: "color palette", description: "Capture the serene beauty of a winter morning with soft cool blues, pale pinks, and misty grays, creating a calm and refreshing palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Icicle Symphony", fullName: "Icicle Symphony Palette", afterName: "color palette", description: "Celebrate the elegance of icicles with shimmering whites, cool blues, and silver accents, creating a sparkling and frosty palette.", filter: "cold tones", image: placeholderImage),

            FilterContent(primaryName: "Frozen Forest Fantasy", fullName: "Frozen Forest Fantasy Palette", afterName: "color palette", description: "Transport yourself to a magical frozen forest with deep greens, cool blues, and touches of icy silver, creating an enchanting and mystical palette.", filter: "cold tones", image: placeholderImage)
        ]
        
        listenFilterContent = [
            
            FilterContent(primaryName: "Shape of You", fullName: "Shape of You by Ed Sheeran", afterName: "song", description: "A catchy and upbeat pop song by Ed Sheeran, known for its infectious melody and romantic lyrics.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Dance Monkey", fullName: "Dance Monkey by Tones and I", afterName: "song", description: "An energetic and globally popular pop hit by Tones and I, characterized by its unique vocals and danceable beat.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Blinding Lights", fullName: "Blinding Lights by The Weeknd", afterName: "song", description: "A synth-pop masterpiece by The Weeknd, recognized for its retro vibe and captivating chorus.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Havana", fullName: "Havana by Camila Cabello ft. Young Thug", afterName: "song", description: "A Latin-influenced pop sensation by Camila Cabello, featuring a vibrant melody and sultry vocals.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Uptown Funk", fullName: "Uptown Funk by Mark Ronson ft. Bruno Mars", afterName: "song", description: "A funk-infused pop hit by Mark Ronson and Bruno Mars, known for its energetic and feel-good vibes.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Bad Romance", fullName: "Bad Romance by Lady Gaga", afterName: "song", description: "A pop anthem by Lady Gaga, celebrated for its bold sound, infectious chorus, and iconic music video.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Happy", fullName: "Happy by Pharrell Williams", afterName: "song", description: "An upbeat and cheerful pop song by Pharrell Williams, famous for its positive lyrics and catchy melody.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Someone You Loved", fullName: "Someone You Loved by Lewis Capaldi", afterName: "song", description: "A heartfelt and emotionally charged pop ballad by Lewis Capaldi, exploring themes of love and loss.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Watermelon Sugar", fullName: "Watermelon Sugar by Harry Styles", afterName: "song", description: "A summery and refreshing pop track by Harry Styles, known for its laid-back vibe and catchy chorus.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Shallow", fullName: "Shallow by Lady Gaga, Bradley Cooper", afterName: "song", description: "An Oscar-winning pop ballad from the movie A Star Is Born, performed by Lady Gaga and Bradley Cooper.", filter: "pop music", image: placeholderImage),

            FilterContent(primaryName: "Stairway to Heaven", fullName: "Stairway to Heaven by Led Zeppelin", afterName: "song", description: "An iconic rock epic by Led Zeppelin, known for its intricate guitar work and timeless appeal.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Bohemian Rhapsody", fullName: "Bohemian Rhapsody by Queen", afterName: "song", description: "A groundbreaking rock opera by Queen, celebrated for its operatic sections and genre-defying structure.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Sweet Child o' Mine", fullName: "Sweet Child o' Mine by Guns N' Roses", afterName: "song", description: "A classic rock anthem by Guns N' Roses, featuring a memorable guitar riff and powerful vocals.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Hotel California", fullName: "Hotel California by Eagles", afterName: "song", description: "A rock masterpiece by Eagles, recognized for its captivating storytelling and guitar solos.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Back in Black", fullName: "Back in Black by AC/DC", afterName: "song", description: "A high-energy rock anthem by AC/DC, known for its driving rhythm and iconic guitar riffs.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Paint It Black", fullName: "Paint It Black by The Rolling Stones", afterName: "song", description: "A dark and atmospheric rock classic by The Rolling Stones, featuring distinctive sitar elements.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Don't Stop Believin'", fullName: "Don't Stop Believin' by Journey", afterName: "song", description: "An enduring rock anthem by Journey, celebrated for its uplifting lyrics and sing-along appeal.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Imagine", fullName: "Imagine by John Lennon", afterName: "song", description: "A thought-provoking and influential rock ballad by John Lennon, known for its timeless message.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "The Sound of Silence", fullName: "The Sound of Silence by Simon & Garfunkel", afterName: "song", description: "A haunting and poetic rock ballad by Simon & Garfunkel, recognized for its introspective lyrics.", filter: "rock music", image: placeholderImage),

            FilterContent(primaryName: "Livin' on a Prayer", fullName: "Livin' on a Prayer by Bon Jovi", afterName: "song", description: "A spirited rock anthem by Bon Jovi, featuring anthemic vocals and an infectious chorus.", filter: "rock music", image: placeholderImage),
            
            FilterContent(primaryName: "Take Five", fullName: "Take Five by Dave Brubeck Quartet", afterName: "song", description: "A timeless jazz classic by the Dave Brubeck Quartet, known for its innovative time signature and melodic improvisation.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "So What", fullName: "So What by Miles Davis", afterName: "song", description: "A landmark composition by Miles Davis, featuring modal jazz and influential improvisational solos.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "Autumn Leaves", fullName: "Autumn Leaves by Cannonball Adderley", afterName: "song", description: "A jazz standard performed by Cannonball Adderley, celebrated for its melancholic melody and harmonic richness.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "Fly Me to the Moon", fullName: "Fly Me to the Moon by Frank Sinatra", afterName: "song", description: "A jazz-pop classic sung by Frank Sinatra, known for its romantic lyrics and smooth arrangement.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "My Favorite Things", fullName: "My Favorite Things by John Coltrane", afterName: "song", description: "A jazz interpretation of the classic tune by John Coltrane, featuring innovative improvisation and modal exploration.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "Summertime", fullName: "Summertime by Ella Fitzgerald", afterName: "song", description: "A jazz standard beautifully performed by Ella Fitzgerald, capturing the essence of the season.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "A Love Supreme", fullName: "A Love Supreme by John Coltrane", afterName: "song", description: "A spiritual jazz masterpiece by John Coltrane, recognized for its profound expression and musical exploration.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "Blue Monk", fullName: "Blue Monk by Thelonious Monk", afterName: "song", description: "A classic bluesy jazz composition by Thelonious Monk, featuring his signature style and improvisational flair.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "What a Wonderful World", fullName: "What a Wonderful World by Louis Armstrong", afterName: "song", description: "A heartwarming jazz standard performed by Louis Armstrong, celebrated for its optimistic lyrics and charming melody.", filter: "jazz music", image: placeholderImage),

            FilterContent(primaryName: "Cantaloupe Island", fullName: "Cantaloupe Island by Herbie Hancock", afterName: "song", description: "A funky jazz composition by Herbie Hancock, known for its catchy riffs and infectious groove.", filter: "jazz music", image: placeholderImage)
        ]
        
        activityFilterContent = [
            
            FilterContent(primaryName: "Solo Hiking Adventure", fullName: "Solo Hiking Adventure", afterName: "activity", description: "Embark on a peaceful hiking journey, surrounded by nature, to reconnect with yourself and enjoy the solitude.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Mindful Meditation Session", fullName: "Mindful Meditation Session", afterName: "activity", description: "Take some time for mindfulness meditation to relax your mind, reduce stress, and enhance your overall well-being.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Solo Artistic Expression", fullName: "Solo Artistic Expression", afterName: "activity", description: "Express your creativity through art, whether it's painting, drawing, or any other form that brings you joy.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Personal Book Reading Retreat", fullName: "Personal Book Reading Retreat", afterName: "activity", description: "Create a cozy reading nook and indulge in a solo reading retreat with your favorite books and a hot beverage.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Solo Movie Marathon", fullName: "Solo Movie Marathon", afterName: "activity", description: "Curate a movie list and enjoy a marathon of your favorite films or explore new genres for a cinematic solo experience.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Cooking Experiment for One", fullName: "Cooking Experiment for One", afterName: "activity", description: "Try out new recipes and savor the joy of cooking a delicious meal tailored to your taste buds.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Stargazing Night", fullName: "Stargazing Night", afterName: "activity", description: "Find a quiet spot, lay back, and enjoy the beauty of the night sky with a solo stargazing session.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Personal Fitness Challenge", fullName: "Personal Fitness Challenge", afterName: "activity", description: "Design a customized workout routine and challenge yourself physically with a solo fitness session.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Journaling and Reflection", fullName: "Journaling and Reflection", afterName: "activity", description: "Take time for self-reflection through journaling, expressing your thoughts, and setting personal goals.", filter: "for myself", image: placeholderImage),

            FilterContent(primaryName: "Solo Music Jam Session", fullName: "Solo Music Jam Session", afterName: "activity", description: "Unleash your musical creativity by playing your favorite instrument or experimenting with musical compositions.", filter: "for myself", image: placeholderImage),
            
            FilterContent(primaryName: "Friendship Hiking Adventure", fullName: "Friendship Hiking Adventure", afterName: "activity", description: "Embark on a scenic hiking adventure with a friend, enjoying nature and each other's company.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Culinary Exploration with a Pal", fullName: "Culinary Exploration with a Pal", afterName: "activity", description: "Explore local eateries or cook together, discovering new flavors and enjoying a delightful culinary experience.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Movie Night with a Friend", fullName: "Movie Night with a Friend", afterName: "activity", description: "Host a movie night with a friend, complete with popcorn, snacks, and a selection of your favorite films.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Fitness Buddy Workout", fullName: "Fitness Buddy Workout", afterName: "activity", description: "Stay fit together by engaging in a joint workout or trying a new fitness class with a friend.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Creative Art Collaboration", fullName: "Creative Art Collaboration", afterName: "activity", description: "Join forces with a friend for a collaborative art project, combining your artistic talents for a unique creation.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Friendship Photography Expedition", fullName: "Friendship Photography Expedition", afterName: "activity", description: "Capture moments and explore photography together, creating lasting memories with a friend.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Board Game Night", fullName: "Board Game Night", afterName: "activity", description: "Organize a fun-filled board game night with a friend, engaging in friendly competition and laughter.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Outdoor Adventure Day", fullName: "Outdoor Adventure Day", afterName: "activity", description: "Plan an outdoor adventure day with a friend, whether it's biking, hiking, or exploring a new area together.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "DIY Craft Party", fullName: "DIY Craft Party", afterName: "activity", description: "Host a DIY craft party with a friend, unleashing your creativity and making personalized crafts together.", filter: "with a friend", image: placeholderImage),

            FilterContent(primaryName: "Friendship Book Club", fullName: "Friendship Book Club", afterName: "activity", description: "Start a book club with a friend, reading and discussing books together to share literary experiences.", filter: "with a friend", image: placeholderImage),
            
            FilterContent(primaryName: "Romantic Dinner Date", fullName: "Romantic Dinner Date", afterName: "activity", description: "Plan a romantic dinner date with your partner, whether it's at a favorite restaurant or a cozy homemade meal.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Couples Spa Day", fullName: "Couples Spa Day", afterName: "activity", description: "Indulge in a relaxing spa day with your partner, enjoying massages, facials, and a tranquil atmosphere.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Scenic Sunset Picnic", fullName: "Scenic Sunset Picnic", afterName: "activity", description: "Pack a picnic and enjoy a scenic sunset with your partner, creating a romantic and memorable evening.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Couples Cooking Class", fullName: "Couples Cooking Class", afterName: "activity", description: "Take a cooking class together to learn new culinary skills and enjoy a delicious meal you've prepared.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Dancing Under the Stars", fullName: "Dancing Under the Stars", afterName: "activity", description: "Enjoy a night of dancing under the stars with your partner, whether it's a formal dance or a spontaneous groove.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Adventure Getaway Weekend", fullName: "Adventure Getaway Weekend", afterName: "activity", description: "Plan a getaway weekend full of adventurous activities like hiking, exploring, and trying new experiences with your partner.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Couples Yoga Retreat", fullName: "Couples Yoga Retreat", afterName: "activity", description: "Reconnect with your partner through a couples yoga retreat, focusing on relaxation and wellness together.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Private Movie Screening at Home", fullName: "Private Movie Screening at Home", afterName: "activity", description: "Create a cozy home movie experience with your partner, complete with favorite films, snacks, and blankets.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Stargazing Cruise", fullName: "Stargazing Cruise", afterName: "activity", description: "Embark on a romantic stargazing cruise with your partner, enjoying the beauty of the night sky over calm waters.", filter: "with a partner", image: placeholderImage),

            FilterContent(primaryName: "Couples Art Workshop", fullName: "Couples Art Workshop", afterName: "activity", description: "Join a couples art workshop to create beautiful art together, expressing your creativity as a team.", filter: "with a partner", image: placeholderImage),
            
            FilterContent(primaryName: "Family Game Night", fullName: "Family Game Night", afterName: "activity", description: "Gather the family for a fun-filled game night with board games, card games, and laughter for all.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Outdoor Family Picnic", fullName: "Outdoor Family Picnic", afterName: "activity", description: "Enjoy quality time outdoors with a family picnic, complete with delicious food and outdoor games.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "DIY Family Craft Day", fullName: "DIY Family Craft Day", afterName: "activity", description: "Engage in creative activities as a family, from crafting and painting to creating lasting memories.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Family Movie Marathon", fullName: "Family Movie Marathon", afterName: "activity", description: "Create a cozy movie marathon at home with family-friendly films, popcorn, and shared enjoyment.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Family Bike Ride Adventure", fullName: "Family Bike Ride Adventure", afterName: "activity", description: "Embark on a family bike ride adventure, exploring scenic trails and enjoying the great outdoors.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Cooking Together as a Family", fullName: "Cooking Together as a Family", afterName: "activity", description: "Bring the family together in the kitchen for a collaborative cooking experience and a delicious meal.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Family Karaoke Night", fullName: "Family Karaoke Night", afterName: "activity", description: "Unleash your inner performers with a family karaoke night, singing and dancing together for fun.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Family Nature Walk", fullName: "Family Nature Walk", afterName: "activity", description: "Take a leisurely nature walk as a family, exploring local parks and enjoying the beauty of the outdoors.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Family Storytime", fullName: "Family Storytime", afterName: "activity", description: "Gather for a cozy family storytime, reading favorite books and creating cherished storytelling moments.", filter: "family", image: placeholderImage),

            FilterContent(primaryName: "Family DIY Garden Project", fullName: "Family DIY Garden Project", afterName: "activity", description: "Work together on a family garden project, planting flowers or vegetables and nurturing them as a team.", filter: "family", image: placeholderImage)
        
        ]
        
        eatFilterContent = [
            FilterContent(primaryName: "Avocado Toast", fullName: "Avocado Toast", afterName: "dish", description: "A delicious and nutritious dish featuring mashed avocado spread over toasted bread, often topped with various seasonings.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Quinoa Salad", fullName: "Quinoa Salad", afterName: "dish", description: "A refreshing salad made with protein-rich quinoa, mixed with colorful vegetables, herbs, and a zesty dressing.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Chickpea Curry", fullName: "Chickpea Curry", afterName: "dish", description: "A flavorful and hearty curry made with chickpeas, tomatoes, and a blend of aromatic spices.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Sweet Potato Bowl", fullName: "Sweet Potato Bowl", afterName: "dish", description: "A nourishing bowl featuring roasted sweet potatoes, quinoa, and a variety of veggies, drizzled with a tahini dressing.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Sushi Rolls", fullName: "Vegan Sushi Rolls", afterName: "dish", description: "Sushi rolls filled with colorful vegetables, avocado, and sometimes tofu, wrapped in nori and rice.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Lentil Soup", fullName: "Lentil Soup", afterName: "dish", description: "A hearty soup made with lentils, vegetables, and aromatic spices, providing a comforting and nutritious meal.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Stuffed Bell Peppers", fullName: "Stuffed Bell Peppers", afterName: "dish", description: "Bell peppers filled with a savory mixture of rice, beans, and vegetables, baked to perfection.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Vegan Tacos", fullName: "Vegan Tacos", afterName: "dish", description: "Tacos filled with plant-based delights like seasoned tofu, beans, lettuce, and salsa for a tasty and satisfying meal.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Coconut Curry Noodles", fullName: "Coconut Curry Noodles", afterName: "dish", description: "Noodles bathed in a creamy coconut curry sauce with a medley of vegetables, creating a flavorful and comforting dish.", filter: "Vegan", image: placeholderImage),

            FilterContent(primaryName: "Mango Avocado Salad", fullName: "Mango Avocado Salad", afterName: "dish", description: "A refreshing salad combining sweet mangoes, creamy avocados, mixed greens, and a tangy vinaigrette.", filter: "Vegan", image: placeholderImage),
            
            FilterContent(primaryName: "Vegetarian Pizza", fullName: "Vegetarian Pizza", afterName: "dish", description: "A classic pizza topped with a medley of colorful vegetables such as bell peppers, tomatoes, olives, and mushrooms.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Caprese Salad", fullName: "Caprese Salad", afterName: "dish", description: "A simple and elegant salad featuring fresh tomatoes, mozzarella cheese, basil leaves, and a drizzle of balsamic glaze.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Spinach and Feta Stuffed Mushrooms", fullName: "Spinach and Feta Stuffed Mushrooms", afterName: "dish", description: "Mushroom caps stuffed with a flavorful mixture of spinach, feta cheese, breadcrumbs, and herbs.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Stir-Fry", fullName: "Vegetarian Stir-Fry", afterName: "dish", description: "A quick and colorful stir-fry featuring a variety of vegetables like broccoli, bell peppers, carrots, and tofu in a tasty sauce.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Eggplant Parmesan", fullName: "Eggplant Parmesan", afterName: "dish", description: "Slices of eggplant coated in breadcrumbs, baked or fried, and layered with marinara sauce and melted cheese.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Burritos", fullName: "Vegetarian Burritos", afterName: "dish", description: "Burritos filled with a delicious mix of black beans, rice, sautéed vegetables, guacamole, and salsa.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Mushroom Risotto", fullName: "Mushroom Risotto", afterName: "dish", description: "Creamy risotto made with Arborio rice, vegetable broth, and sautéed mushrooms, creating a comforting and flavorful dish.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Chili", fullName: "Vegetarian Chili", afterName: "dish", description: "A hearty chili made with a mix of beans, tomatoes, corn, and spices for a satisfying and warming meal.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Pad Thai", fullName: "Vegetarian Pad Thai", afterName: "dish", description: "A popular Thai noodle dish made with stir-fried rice noodles, tofu, bean sprouts, and peanuts in a flavorful sauce.", filter: "Vegetarian", image: placeholderImage),

            FilterContent(primaryName: "Vegetarian Quiche", fullName: "Vegetarian Quiche", afterName: "dish", description: "A savory pie filled with a mixture of eggs, cream, cheese, and assorted vegetables, baked to golden perfection.", filter: "Vegetarian", image: placeholderImage),
            
            FilterContent(primaryName: "Gluten-Free Spaghetti Bolognese", fullName: "Gluten-Free Spaghetti Bolognese", afterName: "dish", description: "A classic Italian dish with gluten-free spaghetti topped with a rich and flavorful bolognese sauce made with ground meat and tomatoes.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Quinoa-Stuffed Bell Peppers", fullName: "Quinoa-Stuffed Bell Peppers", afterName: "dish", description: "Bell peppers filled with a delicious stuffing made of quinoa, black beans, corn, and spices, all baked to perfection.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Chicken Stir-Fry", fullName: "Gluten-Free Chicken Stir-Fry", afterName: "dish", description: "A quick and tasty stir-fry featuring gluten-free tamari-marinated chicken, colorful vegetables, and rice.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Zucchini Noodles with Pesto", fullName: "Zucchini Noodles with Pesto", afterName: "dish", description: "Spiralized zucchini noodles tossed in a homemade gluten-free pesto sauce, creating a light and flavorful dish.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Banana Pancakes", fullName: "Gluten-Free Banana Pancakes", afterName: "dish", description: "Fluffy gluten-free pancakes made with ripe bananas and served with your favorite toppings like berries and maple syrup.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Cauliflower Crust Margherita Pizza", fullName: "Cauliflower Crust Margherita Pizza", afterName: "dish", description: "A gluten-free alternative to traditional pizza crust, topped with fresh tomatoes, mozzarella, and basil.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Vegetable Frittata", fullName: "Gluten-Free Vegetable Frittata", afterName: "dish", description: "A tasty frittata made with eggs and a medley of gluten-free vegetables, perfect for a hearty breakfast or brunch.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Teriyaki Salmon", fullName: "Gluten-Free Teriyaki Salmon", afterName: "dish", description: "Delicious teriyaki-glazed salmon fillets served with gluten-free side dishes like quinoa and steamed vegetables.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Chickpea Flour Pancakes", fullName: "Chickpea Flour Pancakes", afterName: "dish", description: "Flavorful pancakes made with gluten-free chickpea flour and served with your favorite toppings.", filter: "Gluten Free", image: placeholderImage),

            FilterContent(primaryName: "Gluten-Free Chocolate Avocado Mousse", fullName: "Gluten-Free Chocolate Avocado Mousse", afterName: "dish", description: "A decadent dessert made with ripe avocados, cocoa powder, and sweetened with natural sweeteners for a gluten-free treat.", filter: "Gluten Free", image: placeholderImage),
            
            FilterContent(primaryName: "Creamy Coconut Curry", fullName: "Creamy Coconut Curry", afterName: "dish", description: "A flavorful curry made with coconut milk, vegetables, and your choice of protein, creating a creamy and dairy-free delight.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Avocado Chocolate Mousse", fullName: "Dairy-Free Avocado Chocolate Mousse", afterName: "dish", description: "Indulge in a rich and velvety chocolate mousse made with avocados, sweetened with natural ingredients for a dairy-free dessert.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Vegan Mac and Cheese", fullName: "Vegan Mac and Cheese", afterName: "dish", description: "A dairy-free twist on the classic comfort food, featuring a creamy sauce made with plant-based ingredients over gluten-free pasta.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Coconut Milk Ice Cream", fullName: "Coconut Milk Ice Cream", afterName: "dish", description: "Delicious and creamy ice cream made with coconut milk, offering a dairy-free alternative to traditional ice cream.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Broccoli Cheddar Soup", fullName: "Dairy-Free Broccoli Cheddar Soup", afterName: "dish", description: "A comforting soup made with cashews, nutritional yeast, and flavorful spices to mimic the cheesy goodness without dairy.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Almond Milk Smoothie Bowl", fullName: "Almond Milk Smoothie Bowl", afterName: "dish", description: "A refreshing smoothie bowl made with almond milk and topped with an assortment of fruits, seeds, and nuts.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Pesto Pasta", fullName: "Dairy-Free Pesto Pasta", afterName: "dish", description: "Pasta coated in a vibrant dairy-free pesto sauce made with fresh basil, garlic, pine nuts, and nutritional yeast.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Cashew Cheese Stuffed Mushrooms", fullName: "Cashew Cheese Stuffed Mushrooms", afterName: "dish", description: "Mushroom caps filled with a creamy and savory cashew cheese mixture, baked to perfection.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Dairy-Free Coconut Yogurt Parfait", fullName: "Dairy-Free Coconut Yogurt Parfait", afterName: "dish", description: "Layers of dairy-free coconut yogurt, granola, and fresh fruits come together to create a delicious parfait.", filter: "No-Dairy", image: placeholderImage),

            FilterContent(primaryName: "Avocado Lime Sorbet", fullName: "Avocado Lime Sorbet", afterName: "dish", description: "A refreshing and dairy-free sorbet made with ripe avocados, lime juice, and a touch of sweetness.", filter: "No-Dairy", image: placeholderImage),
        
        ]

        watchFilterContents = [
            FilterContent(primaryName: "Inception", fullName: "Inception (2010)", afterName: "movie", description: "A mind-bending heist movie directed by Christopher Nolan.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Attack on Titan", fullName: "Attack on Titan", afterName: "anime", description: "A thrilling anime series about humanity's fight against giant humanoid creatures.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Stranger Things", fullName: "Stranger Things", afterName: "TV-show", description: "A popular sci-fi TV series that combines supernatural elements with 80s nostalgia.", filter: "TV-shows", image: placeholderImage),
            
            FilterContent(primaryName: "Fullmetal Alchemist: Brotherhood", fullName: "Fullmetal Alchemist: Brotherhood", afterName: "anime", description: "Two brothers use alchemy in their quest to search for the Philosopher's Stone to restore their bodies after a failed alchemical experiment.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "My Hero Academia", fullName: "My Hero Academia", afterName: "anime", description: "In a world where nearly every human has some form of superpower, follow the journey of Izuku Midoriya as he trains to become a hero.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Death Parade", fullName: "Death Parade", afterName: "anime", description: "After death, souls are sent to bars where they must participate in games to determine their fate. A thought-provoking series exploring the nature of human morality.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "One Piece", fullName: "One Piece", afterName: "anime", description: "Monkey D. Luffy and his pirate crew embark on an epic journey to find the legendary One Piece treasure and become the Pirate King.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Demon Slayer: Kimetsu no Yaiba", fullName: "Demon Slayer: Kimetsu no Yaiba", afterName: "anime", description: "Follow Tanjiro Kamado's quest to avenge his family and save his sister from demonic transformation in this beautifully animated series.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Steins;Gate", fullName: "Steins;Gate", afterName: "anime", description: "A gripping sci-fi tale involving time travel, conspiracy, and the consequences of altering the past. Prepare for a mind-bending experience.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Naruto", fullName: "Naruto", afterName: "anime", description: "Join Naruto Uzumaki, a young ninja with dreams of becoming the strongest ninja and earning the title of Hokage, the leader of his village.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Attack on Titan", fullName: "Attack on Titan", afterName: "anime", description: "A thrilling anime series about humanity's fight against giant humanoid creatures.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Hunter x Hunter", fullName: "Hunter x Hunter", afterName: "anime", description: "Follow Gon Freecss as he aspires to become a Hunter and find his missing father, encountering various challenges and adventures along the way.", filter: "anime", image: placeholderImage),

            FilterContent(primaryName: "Tokyo Ghoul", fullName: "Tokyo Ghoul", afterName: "anime", description: "In a world where flesh-eating ghouls exist alongside humans, Kaneki Ken undergoes a transformation after a chance encounter with one of these creatures.", filter: "anime", image: placeholderImage),
            
            FilterContent(primaryName: "The Dark Knight", fullName: "The Dark Knight (2008)", afterName: "movie", description: "Christopher Nolan's epic superhero film featuring the Joker's chaotic quest against Batman.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Pulp Fiction", fullName: "Pulp Fiction (1994)", afterName: "movie", description: "Quentin Tarantino's nonlinear masterpiece weaves multiple crime stories in Los Angeles.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "The Shawshank Redemption", fullName: "The Shawshank Redemption (1994)", afterName: "movie", description: "A powerful drama about hope and redemption in a prison setting.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Inglourious Basterds", fullName: "Inglourious Basterds (2009)", afterName: "movie", description: "Quentin Tarantino's alternate history war film blending humor and intense action.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Forrest Gump", fullName: "Forrest Gump (1994)", afterName: "movie", description: "Follow the life journey of Forrest Gump, a man with a low IQ but a remarkable story.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "The Matrix", fullName: "The Matrix (1999)", afterName: "movie", description: "A sci-fi classic exploring a dystopian future and virtual reality.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Fight Club", fullName: "Fight Club (1999)", afterName: "movie", description: "David Fincher's cult classic about an insomniac office worker and his alter ego.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "The Godfather", fullName: "The Godfather (1972)", afterName: "movie", description: "Francis Ford Coppola's iconic crime film chronicling the Corleone family's rise and fall.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Inception", fullName: "Inception (2010)", afterName: "movie", description: "A mind-bending heist movie directed by Christopher Nolan.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "The Silence of the Lambs", fullName: "The Silence of the Lambs (1991)", afterName: "movie", description: "A psychological horror film featuring the hunt for a serial killer with the help of a brilliant but insane cannibalistic doctor.", filter: "movies", image: placeholderImage),

            FilterContent(primaryName: "Schindler's List", fullName: "Schindler's List (1993)", afterName: "movie", description: "Steven Spielberg's powerful portrayal of a German businessman saving Jewish lives during the Holocaust.", filter: "movies", image: placeholderImage),
            
            FilterContent(primaryName: "Breaking Bad", fullName: "Breaking Bad", afterName: "TV-show", description: "A gripping crime drama series following the transformation of a chemistry teacher into a methamphetamine manufacturer.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "Game of Thrones", fullName: "Game of Thrones", afterName: "TV-show", description: "An epic fantasy series based on George R.R. Martin's novels, filled with political intrigue and dragons.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "Stranger Things", fullName: "Stranger Things", afterName: "TV-show", description: "A popular sci-fi TV series that combines supernatural elements with 80s nostalgia.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "The Mandalorian", fullName: "The Mandalorian", afterName: "TV-show", description: "Set in the Star Wars universe, follow the adventures of a lone bounty hunter in the outer reaches of the galaxy.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "The Witcher", fullName: "The Witcher", afterName: "TV-show", description: "Based on the book series, this fantasy series follows Geralt of Rivia, a monster hunter known as a Witcher.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "The Office", fullName: "The Office", afterName: "TV-show", description: "A mockumentary sitcom following the daily lives of office employees at Dunder Mifflin's Scranton, Pennsylvania branch.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "Breaking Bad", fullName: "Breaking Bad", afterName: "TV-show", description: "A gripping crime drama series following the transformation of a chemistry teacher into a methamphetamine manufacturer.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "Black Mirror", fullName: "Black Mirror", afterName: "TV-show", description: "An anthology series exploring the dark and often dystopian aspects of modern society and technology.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "Friends", fullName: "Friends", afterName: "TV-show", description: "A classic sitcom following the lives and adventures of six friends living in New York City.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "Stranger Things", fullName: "Stranger Things", afterName: "TV-show", description: "A popular sci-fi TV series that combines supernatural elements with 80s nostalgia.", filter: "TV-shows", image: placeholderImage),

            FilterContent(primaryName: "The Crown", fullName: "The Crown", afterName: "TV-show", description: "A historical drama series chronicling the reign of Queen Elizabeth II and the events that shaped the second half of the 20th century.", filter: "TV-shows", image: placeholderImage),
        ]
    }
    
    let watchCategory = GeneralCategory(
        categoryName: "watch",
        categoryBeforeName: "randomize what to",
        description: "Let us help you decide what to watch, be it movies, anime or TV-shows. We've got it all! Try it for yourself.",
        filters: ["movies", "TV-shows", "anime", "IdontCare"]
    )

    let eatCategory = GeneralCategory(
        categoryName: "eat",
        categoryBeforeName: "randomize what to",
        description: "We will help you make a decision about your next meal. Can't decide? Try our our randomizer!",
        filters: ["Gluten Free", "Vegan", "Vegetarian", "No-Dairy", "No restrictions"]
    )

    let activityCategory = GeneralCategory(
        categoryName: "activity",
        categoryBeforeName: "randomize an",
        description: "Are you bored? Can't decide what activity to dive into next? We will help! Try out our randomizer.",
        filters: ["for myself", "family", "for a group of friends", "with a partner", "with a friend", "idontcare"]
    )

    let listenCategory = GeneralCategory(
        categoryName: "listen to",
        categoryBeforeName: "randomize what to",
        description: "Are you bored of your usual playlists? Let us bring a little sparkle into your musical taste. Try it out!",
        filters: ["rock music", "pop music", "classical music", "jazz music", "I don't care"]
    )

    let colorPaletteCategory = GeneralCategory(
        categoryName: "Color Palette",
        categoryBeforeName: "randomize a",
        description: "Are you having trouble deciding what colors to use in your next presentation? Or perhaps in your next project? Let us help you out.",
        filters: ["monochrome", "warm tones", "cold tones", "I dont care"]
    )

    let giftCategory = GeneralCategory(
        categoryName: "gift",
        categoryBeforeName: "randomize what to",
        description: "Can't decide what to gift your close ones? Let us help you out!",
        filters: ["female", "male", "Idontcare"]
    )

    let readCategory = GeneralCategory(
        categoryName: "read",
        categoryBeforeName: "randomize what to",
        description: "Having trouble deciding what to read next? Let us help you out! Randomize it!",
        filters: ["books", "manga", "scientific articles", "idontcare"]
    )

    let cookCategory = GeneralCategory(
        categoryName: "cook",
        categoryBeforeName: "randomize what to",
        description: "Can't decide which recipe to follow next? Let us help you plan your next meal with thousands of randomized recipes.",
        filters: ["Gluten Free", "Vegan", "Vegetarian", "No-Dairy", "No restrictions"]
    )
}
