//
//  DietMotivationViewController.swift
//  EarthAndBody2
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Lauren Workosky. All rights reserved.
//

import UIKit

class DietMotivationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var pigMotivation: UITextView!
    @IBOutlet weak var cowMotivation: UITextView!
    @IBOutlet weak var chickenMotivation: UITextView!
    let pig = ["Pigs are some of the thirstiest animals. An average-sized north American pig farm with 80,000 pigs needs nearly 75m gallons of fresh water a year. A large one, which might have one million or more pigs, may need as much as a city. -The Guardian","A single spill of millions of gallons of waste from a North Carolina pig factory lagoon in 1995 killed about 10 million fish and forced the closure of 364,000 acres of coastal wetlands to shellfishing. -The Guardian","In 2006, the UN calculated that the combined climate change emissions of animals bred for their meat were about 18% of the global total – more than cars, planes and all other forms of transport put together. -The Guardian","A human population expected to grow by 3 billion, a shift in developing countries to eating more meat, and global consumption on track to double in 40 years point to the mother of all food crises down the road. How much food we grow is not just limited by the amount of available land but meat-eaters need far more space than vegetarians. A Bangladeshi family living off rice, beans, vegetables and fruit may live on an acre of land or less, while the average American, who consumes around 270 pounds of meat a year, needs 20 times that.","Global agribusiness has for 30 years turned to tropical rainforests – not for their timber but for the land that can be used to graze cattle or grow palm oil and soya. Millions of hectares of trees have been felled to provide burgers for the US and more recently animal feed for farms for Europe, China and Japan. -The Guardian","Most summers between 13,000-20,000 sq km of sea at the mouth of the Mississippi become a 'dead zone', caused when vast quantities of excess nutrients from animal waste, factory farms, sewage, nitrogen compounds and fertiliser are swept down the mighty river. -The Guardian","According to some studies, as much as one-third of all fossil fuels produced in the United States now go towards animal agriculture. -The Guardian"]
    var pigCount = 0
    let cow = ["it takes 60, 108, 168, and 229 pounds of water to produce one pound of potatoes, wheat, maize and rice respectively. But a pound of beef needs around 9,000 litres – or more than 20,000lbs of water.  -Vegetarian Author John Robbins","A cow excretes around 40kg of manure for every kilogram of edible beef it puts on and when you have many thousands crowded into a small area the effect can be dramatic. Their manure and urine is funnelled into massive waste lagoons sometimes holding as many as 40m gallons. These cesspools often break, leak or overflow, polluting underground water supplies and rivers with nitrogen, phosphorus and nitrates. -The Guardian"," livestock farming ranks as one of the three greatest sources of climate changing emissions and one of the largest contributors to environmental degradation.-The Guardian","Nearly 30% of the available ice-free surface area of the planet is now used by livestock, or for growing food for those animals. One billion people go hungry every day, but livestock now consumes the majority of the world's crops. -The Guardian","our hunger to eat animals has led to overstocking of fragile lands and massive soil erosion and desertification. Overgrazing, from the downlands of southern England to the uplands of Ethiopia and mountains of Nepal, causes great loss of fertility, as well as flooding. -The Guardian","concentrated factory farming of animals contributes to ozone pollution. -The Guardian","meat eaters get increased chances of obesity, cancers, heart diseases and other illnesses -The Vegetarian Society","A meat diet is generally considered twice as expensive as a vegetarian one. -The Guardian"]
    var cowCount = 0
    let chicken = ["Around 9 billion chickens and turkeys are killed for meat each year in the U.S. alone. These sentient animals spend their entire lives in total confinement; more chickens are raised and killed for food than all other land animals combined-Plant Based News","Once at the slaughterhouse, the birds are hung upside down and their throats are cut open by machines. The chickens are then immersed in scalding-hot water for feather removal - and they are fully conscious throughout the entire process. -Plant Based News","97 percent of tested chicken breast samples 'harbored bacteria that could make you sick'.-Plant Based News","Poultry slaughterhouses release large amounts of waste into the environment, polluting land and surface waters - as well as posing a serious threat to humans. -Plant Based News","Other academics have calculated that if the grain fed to animals in western countries were consumed directly by people instead of animals, we could feed at least twice as many people – and possibly far more – as we do now. -The Guardian","millions of pounds of antibiotics is added to animal feed a year to speed the growth of cattle. But this contributes to the rise of resistant bacteria, and so makes it harder to treat human illnesses.-The Guardian","Animal waste contains many pathogens including salmonella, E coli, cryptosporidium, and fecal coliform, which can transfer to humans through water run-off or manure or touch. -The Guardian"]
    var chickenCount = 0
    @IBAction func clickPig(_ sender: Any) {
        if pigCount < 7 {
            pigMotivation.text = pig[pigCount]
            pigCount = (pigCount)+1
        } else {
            pigCount = 0
            pigMotivation.text = pig[pigCount]
        }
    }
    
    @IBAction func clickCow(_ sender: Any) {
        if cowCount < 8 {
            cowMotivation.text = cow[cowCount]
            cowCount = (cowCount)+1
        } else {
            cowCount = 0
            cowMotivation.text = cow[cowCount]
        }
    }
    
    @IBAction func clickChicken(_ sender: Any) {
        if chickenCount < 7 {
            chickenMotivation.text = chicken[chickenCount]
            chickenCount = (chickenCount)+1
        } else {
            chickenCount = 0
            chickenMotivation.text = chicken[chickenCount]
        }
    }
    
}
