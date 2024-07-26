import "package:db/db.dart" as db;
import 'package:articles_repository/articles_repository.dart';
import 'package:uuid/uuid.dart';

class ExampleArticles {
  ExampleArticles(this.dbClient);

  final db.DbClient dbClient;
  final uuid = const Uuid();

  void createArticles() {
    //LOCAL ARTICLES

    var article1 = db.Article(
      id: uuid.v4(),
      type: db.ArticleType.city,
      title: 'How Brussels is grappling (or not) with climate grief ',
      createdAt: DateTime.now().toUtc(),
      uri:
          'https://www.politico.eu/article/climate-change-flooding-europe-brussels-is-grappling-or-not-with-climate-grief/',
      body:
          "By the time Maria started her prestigious internship at the European Commission’s environment department, her friends already saw her as a climate geek, making her a perfect fit for the role — or so she thought. It took her only a few months, however, to start feeling utter frustration at the glacial pace at which key decisions to secure the future of the planet were being taken. So, she switched tack, deciding instead to get her hands dirty in the pursuit of saving the planet. After turning down a permanent job at the most coveted EU institution, she accepted a steep salary cut to work at one of Brussels' green NGOs. But here too she struggled. While her new colleagues were more attune to the rage she felt seeing the planet burn while people went about their days, the new job brought new stresses.Her days involved endless reading of scientific reports on climate change, and this worsened her now-lingering mental health condition: eco-anxiety — a term coined and popularized by climate activists to describe the type of mental struggle they experience. In fact, eco-anxiety is now so widespread that the World Health Organization has published a paper on the need to care for populations most at risk. The condition is also known as solastalgia, environmental distress and ecological grief, and is name-checked as one of many reasons for today's mental health epidemic. To cope with her growing distress, Maria, a pseudonym to protect her identify, also signed up to activism. “In activism, you're surrounded by people who share exactly the same stress, and you feel that you're acting,\" she said. But soon her relentless fight to protect the planet — by means of reports and advocacy by day, and militant action by night — left her depleted. “I was dedicating my entire life to the cause,” she said, speaking from her new house in France, where she lives and works as a part-time environmentalist. Maria isn’t alone in feeling anxious because of soaring global temperatures, multiplying climate disasters, sea level rise and entire species being wiped out as their natural ecosystems vanish. Yet her story shines a light on a particular group of people affected by eco-anxiety — policy wonks spending days crafting and shaping climate legislation. For them, avoiding reading grim news about the planetary fallout simply isn't an option.",
      imageUrl:
          "https://media.nature.com/w1248/magazine-assets/d41586-024-02006-3/d41586-024-02006-3_27208596.jpg?as=webp",
    );

    var article2 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.city,
        title:
            "'Get your act together': Climate March returns to Brussels on Sunday as COP28 kicks off",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://www.brusselstimes.com/816906/get-your-act-together-climate-march-returns-to-brussels-on-sunday-as-cop28-kicks-off",
        body:
            "Hundreds of climate activists are expected to take to the streets of Brussels during the \'Great\' Climate March on Sunday, taking place just days after COP28 in Dubai gets underway.The Belgian activist group Climate Coalition is calling on concerned citizens to march through the Belgian capital to urge politicians and decision-makers to implement stronger measures to limit global warming. The march will set off from Brussels-North station at 12:30 on Sunday and will finish at the Esplanade du Cinquantenaire.Last year\'s climate march. Credit: Belga/ Nicolas Maeterlinck. Nicolas Van Nuffel, Chair of Climate Coalition, is therefore calling on \"citizens to take to the streets en masse to demand that Belgium and Europe finally get their act together to make the industry sector sustainable, improve the quality of our public transport, insulate our homes and restore nature\". The Climate Coalition brings together around 100 NGOs, trade unions and citizen movements from across Belgium who have helped campaign for \"fair and necessary measures to tackle climate change\". For this year's event, the theme of the march is \"every tenth of a degree counts\". This refers to the fact that every 0.1°C less of a degree of warming means more biodiversity, more equality, better jobs, more clean air, fewer heatwaves and less flooding. \"Every tenth of a degree we gain means a better future and a less difficult world for us, our children and their children.\" Van Nuffel noted that, while it is unsure whether the march will break records when it comes to the number of participants, the organisation is confident that Belgians will join it in numbers. \"It's now or never to make our voice heard. It's high time we moved on from sporadic actions to a general mobilisation.\" On Thursday, the COP28 in Dubai, in the United Arab Emirates, will kick off. It is widely seen as the most important annual meeting in international climate negotiations, bringing together all countries that signed the 1992 UN Climate Convention. For two weeks, they will discuss how to limit global warming to 1.5°C, while for the very first time, the Global Stocktake will be published – a global inventory monitoring the implementation of the 2015 Paris Agreement. As ever, various NGOs have warned that a greater urgency is needed in these discussions, the 1.5°C mark was already exceeded this year. \"A drastic change of course is needed, also at the Belgian level. Targets and treaties mean little if they are not translated into action,\" said Koen Stuyck, climate and footprint policy officer at WWF-Belgium.",
        imageUrl:
            "https://api.brusselstimes.com/wp-content/uploads/2023/11/5e6e1aa6-belgaimage-47427338-1024x683.jpg");

    var article3 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.city,
        title:
            'In Brussels, students skip school for mass global warming protest',
        createdAt: DateTime.now().toUtc(),
        uri:
            'https://www.euractiv.com/section/climate-environment/news/in-brussels-students-skip-school-for-mass-global-warming-protest/',
        body:
            "Thousands of Belgian school children skipped classes on Thursday (24 January) to flood Brussels in an unprecedented protest against global warming and pollution, vowing to miss school once a week until the government takes action. Students banging drums and carrying signs decrying man-made climate change gathered around the European Parliament. Police said the 35,000-strong gathering was the biggest turnout of recent times for a student protest in the Belgian capital, which is also home to European Union institutions. \“If we skip every Thursday, if we don’t go to school, the big people in our country and in the world will see that this is a problem,\” said high school student Joppe Mathys. Another student held a sign saying: \“Be part of the solution, not the pollution.\” A nine-year-old girl, who gave her name only as Lalla and was with her teacher, said it was time people stopped driving cars and walked and cycled instead. \“Dinosaurs thought they had time too,\” read one banner.",
        imageUrl:
            "https://en.euractiv.eu/wp-content/uploads/sites/2/2019/01/Belgian_students_climate-2048x1151.jpg");

    var article4 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.city,
        title:
            "Thousands of climate change activists hold boisterous protest march in Brussels with serious message",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://apnews.com/article/brussels-climate-change-march-a884034cff25cb528b08ee2f6f24c162",
        body:
            " BRUSSELS, Belgium (AP) — Thousands of people marched through the center of Brussels on Sunday in a boisterous rally highlighting the dangers of climate change, as the COP28 climate summit draws to an end in Dubai. “We must save our planet. It’s the only one where there’s beer,” read one sign at the head of the parade, led by a brass band. But the message of the Great Climate March was serious: Act now to stop the world from destroying itself. The activists of Climate Coalition called for politicians to put in place stronger measures to counter global warming. One man bundled against the cold, Luc Durnez, complained that the Belgian government went to the climate summit “without a plan, and it is really a shame for us.” In Dubai, United Arab Emirates, nations were promising measures to slash the world’s greenhouse emissions by nearly half in seven years to limit global warming to 1.5 degrees Celsius (2.7 degrees Fahrenheit) compared with pre-industrial times. But marchers in Brussels complained that Europe was not doing enough or fast enough.",
        imageUrl:
            "https://dims.apnews.com/dims4/default/a719c9a/2147483647/strip/true/crop/1627x1084+104+0/resize/980x653!/format/webp/quality/90/?uri=https%3A%2F%2Fassets.apnews.com%2F68%2F06%2F74a6799e06d3b68ca897a9a94cd9%2Fbaeb7fe76c234c899549e5dff3491b63");

    dbClient.insertArticle(article1);
    dbClient.insertArticle(article2);
    dbClient.insertArticle(article3);
    dbClient.insertArticle(article4);

    //NATIONAL ARTICLES

    var article5 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.national,
        title: 'Belgium fails to meet energy and climate plan deadline',
        createdAt: DateTime.now().toUtc(),
        uri:
            'https://www.vrt.be/vrtnws/en/2024/07/01/belgium-fails-to-meet-energy-and-climate-plan-deadline/',
        body:
            " Belgium has failed to meet a deadline that was set by the European Commission to submit a definitive energy and climate plan by 30 June. The Flemish authorities say that they won’t discuss a new climate plan with the other regions the federal government until a new Flemish Government is in place. These means it could be some time yet before Belgium is able to submit a climate plan. It's not the first time that Belgium has been late in submitting its climate plan. As the regions and the federal government all have to agree on a plan before it can be submitted this can lead to delays as is the case now. The Walloon and Brussels regional governments and the federal government have already given their approval to a new plan. However, the (outgoing) Flemish Government has not and it says that it will be up to the new Flemish government once it has been formed to decide on the energy and climate plan.  Belgium only submitted a provisional version of the new climate plan on 23 November 2023 (after two previous deadlines had not been met). However, the figures in the provisional plan were insufficient to satisfy the European Union. The National Climate Committee can't take any further steps for the time being and its chair, the outgoing Federal Environment Minister Zakia Khattabi (Francophone green), said: \"I can only conclude that if one of four participants in a group fails to do their homework, the group as whole fails.\"",
        imageUrl:
            "https://images.vrt.be/width1280/2018/06/10/516c3303-6c57-11e8-abcc-02b7b76bf47f.jpg");

    var article6 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.national,
        title:
            "Medicines impacting Belgian water system, environmental risk analysis demanded",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://www.euractiv.com/section/health-consumers/news/medicines-impacting-belgian-water-system-environmental-risk-analysis-demanded/",
        body: '''
		Prioritising pollution prevention or human health? That’s the question probing the ethical limits of Belgium’s pharmaceutical industry, amidst discussion of whether to approve new medicines if environmental risk assessments prove inadequate.

		The question was raised by David Earnshaw of the MSD Policy Center in Brussels, during a multifaceted discussion, revealing the complex interplay between environmental concerns and public health imperatives.

		Jan Steurs, the Belgian Groen candidate for the European Parliament, rejects framing the ‘Environment v. Human Life’ as an either-or scenario, he told Euractiv: “A healthy living environment, inclusive of clean water, is just as essential for our well-being as the development of new medicines.”

		According to Steurs, Flanders faces the presence of medications in surface water, evidenced by several research studies. The delicate balance between environmental health and human health is now a growing consideration in policymaking and industry practices.
		Belgian enviro-pharma research

		Research by Professor Raf Dewil from KU Leuven’s PETLab (Process and Environmental Technology Lab) has shed light on the presence of pharmaceutical residues in water.

		Our waterways harbour more than just water, with antibiotics, painkillers, contraceptives, and chemotherapy medicines eventually finding their way into our wastewater after consumption.

		The Vlaamse Milieumaatschappij’s monitoring network has been diligently tracking these compounds.

		Their findings revealed that approximately twenty different pharmaceutical substances are detectable in water systems. Remarkably, some locations exhibit traces of 25 out of 26 measured substances. In essence, our water contains a medicine cocktail, the article states.

		“Specific fish species produce more males than females, or vice versa, due to hormone-disrupting substances in the water. It can also involve carcinogenic substances that cause cell mutations,” said Dewil.

		“The impact isn’t confined to aquatic life,” he added. “We consume contaminated fish from these water bodies, and medication residues also end up in our drinking water sources. We must find a way to keep them out.”

		We don’t know how harmful these medication residues are said Dewil, explaining “They exist in very low concentrations, challenging to measure in the body, and their effects sometimes only manifest after years. But there is increasing scientific evidence that prolonged exposure to such small quantities can also be problematic.”
		A long-standing issue

		AstraZeneca’s recent ‘Pharmaceuticals in the Environment Statement‘ acknowledges that trace amounts of pharmaceuticals have existed in the environment for over two decades.

		As consumption increases due to improved access to medicines and an ageing population, these levels may rise further, reported the company.

		“Both the production and the excretion of breakdown substances after use have a significant environmental impact, which is harmful to our health. Recognising this, I believe it’s crucial to integrate considerations of the environmental impact of medications across their entire life cycle,” emphasised Steurs.

		Earnshaw stressed that companies should do everything they possibly can to protect the environment and satisfy the regulators.
		Environmental risk assessment

		In line with this perspective, proposed new regulations would mandate companies to include an environmental risk assessment (ERA) as part of their marketing authorisation requests.

		To ensure thorough evaluation of these assessments, Members of the European Parliament (MEPs) have advocated for the creation of a dedicated ad-hoc environmental risk assessment working party within the European Medicines Agency.

		Additionally, MEPs stressed the importance of implementing comprehensive risk mitigation measures that address emissions to air, water, and soil throughout the entire life cycle of medicines.

		Following the European Parliament’s recent position on the pharmaceutical legislation, a Pfizer employee has raised a red flag, saying: “It includes amendments that could undermine the legal certainty that Europe so desperately needs to increase its global competitiveness.”

		They added: “This includes disproportionate conditions and obligations regarding supply and shortages, environmental risk assessment and other critical areas for our industry’s ability to operate in Europe.”

		“We are allies of the industry in the process of bringing back more pharmaceutical production to Europe. During COVID, we realised that we can no longer rely solely on global flows of medications,” said Steurs.

		“However, we also hope that the industry will be an ally in considering all health aspects, including the importance of a healthy living environment for people,” Steurs remarked.

		Belgian Minister of Climate, the Environment, Sustainable Development and Green Deal, Zakia Khattabi, declined to take a position on the matter when contacted by Euractiv. Belgium is holding the EU presidency until the end of June.:we
		''',
        imageUrl:
            " https://www.euractiv.com/wp-content/uploads/sites/2/2024/05/shutterstock_445349674-800x450.jpeg");

    var article7 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.national,
        title:
            "Belgium becomes first in EU to recognise ecocide as international crime",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://www.brusselstimes.com/937229/belgium-becomes-first-in-eu-to-recognise-ecocide-as-international-crime-tbtb",
        body: '''
		Belgium's Federal Parliament approved a completely renewed Penal Code on Thursday evening, which – for the first time in Europe – includes recognition of the crime of ecocide at both the national and international levels.

		From now on, ecocide is included in the criminal code, as are crimes against humanity and genocide. This ecocide law makes it possible to convict and punish serious, large-scale and irreversible crimes against nature with 20 years in prison and a fine of €1.6 million – making Belgium the first EU Member State to bring domestic law in line with the European Union’s revised Environmental Crimes Directive.

		"A crime against nature is by definition a crime against all of us. The recognition of ecocide in criminal law is a milestone in the recognition of nature's rights," said Ruth-Marie Henckes, Biodiversity Campaigner at Greenpeace.

		"We would have liked to have seen a broader application of the law to deter all types of serious nature destruction (such as also large-scale water pollution or illegal deforestation), but this law already gives us the means in some cases to make those responsible pay for the consequences of their crimes, for example in the case of a shipwreck of an oil tanker in the North Sea," she added.

		At the forefront of the global conversation

		Nationally, the new crime of ecocide, aimed at preventing and punishing the most severe cases of environmental degradation, such as large oil spills, will be applied to individuals in the highest positions of decision-making power and to corporations.

		Belgium's environmental legislation is primarily regionalised, meaning most of it falls under the responsibility of the three regional governments of Flanders, Wallonia and Brussels. This new law, however, is limited to areas within the jurisdiction of the Federal Government, such as the North Sea and nuclear waste management.

		Still, the limited domestic scope of the new bill is not a reason to dismiss the significance of the development, says Patricia Willocq, Director of Stop Ecocide Belgium.

		All 27 Member States are tasked with aligning their domestic penal codes with this updated directive – a process that will extend to Belgium's three regions. "We anticipate that this effort will significantly reduce any disparities between Federal and Regional environmental criminal laws. As Belgium holds the presidency of the EU, this directive should encourage the regions to play their part in the area of their competence."

		Samuel Cogolati, Federal MP for Ecolo (left) and Jojo Mehta, CEO and co-founder of Stop Ecocide International. Credit: Denis Gousset

		Willocq stressed that this decision puts Belgium "at the forefront of a truly global conversation" around criminalising the most severe harms to nature. She added that the country must continue to advocate for the recognition of ecocide at the International Criminal Court, alongside genocide.

		"To fully protect nature, it is necessary that those that would willfully destroy vast swathes of the natural world, in turn causing untold human harm, should be criminalised," she added. "We will continue to campaign to eradicate ecocide from Belgium and the world."

		Additionally, Belgium has become the first European country to recognise ecocide as an international crime, based on the consensus definition proposed in 2021 by the Independent Expert Panel (IEP) convened by the Stop Ecocide Foundation, in its penal code.

		Previously, the country already recognised genocide, crimes against humanity, war crimes and the crime of aggression, and is now adding a nature-centred element to its penal code by recognising a fifth crime under international law: ecocide.

		A protest march in Brussels, to support the banning of ecocide. Credit: Belga / Nicolas Maeterlinck

		"After four years of fighting in Parliament and in civil society, our penal code is finally coming to the aid of the planet: the worst attacks against the environment are about to be criminalised," said Federal MP Samuel Cogolati (Ecolo). "Our mobilisation is bearing fruit."

		CEO and co-founder of Stop Ecocide International, Jojo Mehta, said that the conversation around a new ecocide law is gathering momentum as a growing list of countries – such as the Netherlands, Scotland, Mexico, Brazil, England, Italy and Spain – are taking concrete steps towards establishing new domestic crimes of ecocide in the last year.

		"With prominent voices like that of Belgium leading the way, tangible progress is being made internationally, particularly so in Europe following last November’s agreement to include ecocide-level crimes in the EU’s revised environmental crimes directive," Mehta said. "I have no doubt we will see international recognition of the crime of ecocide in the near future."
		''',
        imageUrl:
            "https://api.brusselstimes.com/wp-content/uploads/2024/02/cc35811e-belgaimage-33215916-1024x683.jpg");

    var article8 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.national,
        title:
            "Amazon announces €1.1 million funding to preserve and protect Belgium’s National Park ‘Brabantse Wouden’",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://www.aboutamazon.eu/news/sustainability/amazon-announces-1-1-million-funding-to-preserve-and-protect-belgiums-national-park-brabantse-wouden",
        body: '''
        The investment from the Right Now Climate Fund will help the National Park preserve its UNESCO-listed ancient woodlands, allowing more people to enjoy the benefits of being in nature.
        
        Amazon has announced its first Right Now Climate Fund (RNCF) project in Belgium, providing €1.1 million funding for the establishment of the newest Belgian National Park, Brabantse Wouden. The funding supports the Brabantse Wouden organisation, appointed by the Flemish Minster for the Environment to operate the National Park, the first of its kind in Flanders.
        
        The new National Park is intended to strengthen the resilience of Belgian woods against climate change, and to benefit the local community. The RNCF, which provides funding for initiatives that protect and restore nature around the world, made the €1.1 million investment to help the National Park carry out scientific research, as well as preserve and protect valuable natural areas.
        Belgium’s National Park Brabantse Wouden.jpg
        The new Brabantse Wouden National Park in Belgium will help preserve UNESCO-listed ancient woodlands.
        
        “I’m delighted with the official establishment of our newest national park: National Park Brabantse Wouden”, said Zuhal Demir, Flemish Minister for the Environment, Justice, Tourism and Energy. "These woodlands are among the oldest in Flanders, a fantastic green lung. I'm curious about its evolution and opportunities it will offer to the 2 million people that live in the area. This project will be taken to the next level thanks to Amazon's €1.1 million grant."
        Eva, Minister Demir and PH BW.jpg
        (L-R) Eva Faict, Country Manager, amazon.com.be; Patrick Huvenne Regional Manager of Nature and Forest Agency and Zuhal Demir, Flemish Minister for Justice and Enforcement, Environment, Energy and Tourism.
        
        Brabantse Wouden is recognised by UNESCO for its ancient woodlands that have been unchanged since the Ice Age. The designation of becoming a National Park allows the area increased environmental protection, and means it will receive more funding to encourage people from the nearby urban populations of Brussels, Leuven, Halle, and beyond to engage with nature through the 1,200km of recreational trails within the Park’s 465km2 boundary.
        
        The ancient woodlands within the park’s boundaries are fragmented between urban areas and farmland. In order to improve connectivity between natural spaces, part of Amazon's funding will go towards the Brabantse Wouden partners to plant 30,000 trees between already established woodlands. This will create wildlife corridors to enable biodiversity to flourish and improve the resilience of the ancient woodlands.
        
        The Brabantse Wouden National Park is home to 100 km2 of farmland. Our funding is supporting 30 farms to invest in sustainable practices. This will improve the amount of carbon stored with the soils of these farms, increase the amount of flood protection the farms provide to the surrounding urban populations, and enhance the levels of biodiversity of the farms. Adapting sustainable agricultural practices is considered a critical method to reducing greenhouse gas emissions.
        
        “As the provincial authority, protecting and safeguarding all ecosystem services in the region is an absolute priority. After all, our province directly provides people with drinking water and food,” said Bart Nevens, Deputy of the province Vlaams-Brabant. “We are very pleased that Amazon is supporting the Brabantse Wouden National Park, as it will help ensure that this important ecosystem is enhanced, and continues to provide important benefits to the people of our region.”
        
        In addition to planting trees and expanding the areas of habitat, our funding is helping the park raise awareness and achieve its goal of three million visitors a year. Funding is going towards creating at least 40 ambassadors of the park, whose role is to attract the local community to engage with nature. We will also fund a training programme that will develop skills and create jobs through teaching people how wood can be sustainably harvested to create products, such as benches and garden furniture to be sold locally.
        
        “We are delighted to help protect the ancient Belgian woodlands of the Brabantse Wouden National Park, and offer people the chance to experience the benefits of being in nature,” said Eva Faict, Country Manager, amazon.com.be. “We believe Amazon has a role in restoring and enhancing nature in the communities where we operate, alongside our Climate Pledge commitment to achieve net-zero carbon by 2040.”
        Photo équipe BW.jpg
        The new Brabantse Wouden National Park in Belgium will help preserve UNESCO-listed ancient woodlands.
        
        (L-R) Professor Dr Hans van Dyck, UCLouvain (ecology and biodiversity); Patrick Huvenne, Regional Manager of Nature and Forest Agency; Eva Faict, Country Manager of amazon.com.be; Zuhal Demir, Flemish Minister for Justice and Enforcement, Environment, Energy and Tourism; Goedele Van der Spiegel, General administrator Nature and Forests Agency; Bart Nevens, Deputy of the Environment for the province of Brabant; Jan Horemans, President Vrienden van Heverleebos en Meerdaalwoud; Bart Vercoutere, Board Member  Vrienden van Heverleebos en Meerdaalwoud.
        
        To help ensure that the park is innovating and responding to climate change, we will help fund the creation of a scientific board and provide the instruments for 250 monitoring points to continuously collect environmental data such as: temperature, soil health, and air quality. The board will consist of professors from at least four local universities, and will be responsible for interpreting the environmental data and creating a long-term research roadmap that will inform future projects for the park.
        
        As part of the Right Now Climate Fund’s commitment to funding nature-based projects in European communities, we have also invested in a nature and wildlife restoration fund in France, a reforestation programme in Italy, an urban greening programme in Germany, a rewilding and tree planting project in the UK, the world’s first commercial-scale seaweed farm located off the coast of the Netherlands, a blanket bog restoration project in Ireland, and two projects based in Spain: a reforestation project in Madrid, Arco Verde, and an educational initiative in the region of Andalusia. Additionally, we have funded forest conservation and restoration in the Appalachian Mountains in the United States, and the Agroforestry and Restoration Accelerator programme in the Brazilian Amazon rainforest.
        
        We are a key member of the LEAF Coalition, a new global public-private initiative to mobilise at least \$1 billion to protect the world's tropical rainforests. We have also allocated \$15 million for nature-based projects in the Asia-Pacific region, with \$3 million dedicated to projects in India, including planting 300,000 trees in the Western Ghats.
''',
        imageUrl:
            "https://assets.aboutamazon.com/dims4/default/1ee3bf5/2147483647/strip/true/crop/1600x1066+0+0/resize/1115x743!/format/webp/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F6c%2Fde%2Fec174adf4d01a2b950891d9fee4a%2Fbelgiums-national-park-brabantse-wouden.jpg");

    dbClient.insertArticle(article5);
    dbClient.insertArticle(article6);
    dbClient.insertArticle(article7);
    dbClient.insertArticle(article8);

    //GLOBAL ARTICLES

    var article9 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.global,
        title:
            "More than 100 flights canceled in Germany as environmental activists target airports across Europe",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://www.nbcnews.com/news/world/flights-cancelled-germany-activists-target-airportsclimate-rcna163589",
        body: '''
FRANKFURT, Germany — Germany’s busiest airport canceled more than 100 flights Thursday as environmental activists launched a coordinated effort to disrupt air travel across Europe at the height of the summer holiday season to highlight the threat posed by climate change.

Frankfurt Airport said flights were halted for safety reasons after climate activists breached security fences, triggering a response from police, firefighters and airport security officers. All runways were back in operation by 7:50 a.m. local time, it said. About 140 flights have been cancelled so far, but further disruptions are expected throughout the day, the airport said.

Environmental groups said they planned to target airports around Europe this summer to remind people about the link between fossil fuels, such as those used by airliners, and climate change. The groups are calling for governments around the world to end the extraction and burning of fossil fuels by 2030.

“We sharply condemn these unauthorized demonstrations, and we reserve the right to take legal action against the participants,” Frankfurt Airport said. “Their activities pose severe danger to flight operations — possibly putting human life at risk.”
Watch: Climate protesters spray paint on Stonehenge
00:54

Climate data showed that Monday was the hottest day ever recorded as human-caused climate change continues to drive unprecedented heat and growing weather extremes. Global investments in planet-warming oil and gas are expected to increase by 7% this year, according to the International Energy Agency, despite global promises to slash fossil fuel use.

Flying is considered one of the most carbon-intensive activities, but the aviation industry is expected to grow steadily over the coming decades despite efforts to contain the climate crisis.

The Last Generation group, which organized the Frankfurt demonstration, said six protesters cut holes in the perimeter fence and headed toward the runways on foot, bicycles and skateboards.

It was the second time in as many days that a protest by Last Generation caused disruption at a German airport.

On Wednesday, five protesters glued themselves to a taxiway at Cologne-Bonn Airport, forcing a roughly three-hour halt to flights. That protest resulted in 31 flights being canceled. There were other protests or attempted protests in other European countries.

Climate activists staged similar actions in Finland, Norway, Switzerland and Spain on Wednesday.
Image:
Emergency personnel on the tarmac at Frankfurt Airport, where environmental activists launched a coordinated effort to disrupt air travel Thursday.Arne Dedert / dpa via AP

At Helsinki Airport, a handful of protesters blocked the main check-in area for about 30 minutes, but police said the demonstration caused no delays to flights or other disruption.

At Oslo’s main Gardermoen airport, three activists managed to enter the runway area early Wednesday, waving banners and disrupting air traffic for about half an hour. Police said there were no major flight delays.
Recommended
OUT News
Texas man vanished from same Bahamas yoga retreat 10 years prior to Chicago woman
Latino
What to know about Venezuela President Nicolás Maduro as he seeks a third term

Police in London said Wednesday that they prevented a planned protest at Heathrow Airport that could have had a significant impact on Europe’s largest airport. Seven members of the group known as Just Stop Oil were arrested at Heathrow and three others were taken into custody at other locations as part of an “intelligence-led” operation, the Metropolitan Police Service said in a statement.

One of those arrested in London was Sean Callaghan, 29, who described himself as an environmental educator.

“I’m taking action at airports this summer because it is impossible for me to see a way in which we can inspire and enthuse students about the future of our planet,″ Callaghan said in a video posted on social media.

Last week, the German Cabinet approved legislation that would impose tougher penalties on people who break through airport perimeters.

The bill, which still requires approval by lawmakers, foresees punishment ranging up to a two-year prison sentence for people who intentionally intrude on airside areas of airports such as taxiways or runways, endanger civil aviation, or enable someone else to. Currently such intrusions only draw a fine.
''',
        imageUrl:
            "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1000w,f_auto,q_auto:best/rockcms/2024-07/240725-germany-airport-protests-mn-0830-cf0e8f.jpg");

    var article10 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.global,
        title:
            "Vietnam sentences environmental activist to 3.5 years in prison: rights group",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://www.rfa.org/english/news/vietnam/environmental-campaigner-prison-07242024225217.html",
        body: '''
A court in Vietnam has sentenced Ngo Thi To Nhien, director of a clean energy think tank, to three-and-a-half years in prison, according to human rights group Project88.

Citing three unnamed sources, the group said the closed-door trial in the capital, Hanoi, was held on June 27. State-controlled media have not reported on it.

Nhien was executive director of the Vietnam Initiative for Energy Transition Social Enterprise, or VIETSE. The group worked with Vietnamese authorities, foreign governments and corporations to try to reform the energy sector and accelerate its transition to carbon neutrality.

She was arrested in Hanoi on Sept. 15, 2023, and charged five days later with “stealing, buying, selling, or destroying the seal or documents of a state agency or organization” under Article 342 of the criminal code. 

Government officials Le Quoc Anh and Duong Viet Duc, who VIETSE hired as consultants, were also arrested and charged under Article 342. 

Project88 said the two also received prison sentences, although it didn’t give details. VIETSE closed shortly after Nhien’s arrest.

Nhien is the sixth climate activist to be imprisoned by the Vietnamese government since 2021. Dang Dinh Bach, Mai Phan Loi, Nguỵ Thi Khanh, Bach Hong Duong, and Hoang Thi Minh Hong received sentences of up to five years on charges of “tax evasion.”

“The imprisonment of Ngo Thi To Nhien, along with the arrests of other climate activists, has decimated the ability of Vietnam’s civil society to monitor the country’s energy transition,” said Michael Altman-Lupu, Human Rights Researcher at Project88.

“Now, Vietnam has begun to ignore its climate obligations with impunity, and there is nobody left to speak out,” he said.

Radio Free Asia emailed Vietnam’s Ministry of Foreign Affairs to confirm Nhien’s sentence and request comment on Project88's statement, but did not immediately receive a response by the time of publication.

European Union High Representative for Foreign Affairs and Security Policy Josep Borrell is set to visit Vietnam on July 29-31 to discuss cooperation on sustainable development and climate policy.

Project88 said Hanoi is reneging on commitments it made in order to qualify for US\$15.5 billion in funding from the EU and G7 nations under a Just Energy Transition Partnership Agreement.

The group said the arrest of Nhien and other campaigners came as a result of the Communist Party’s so-called Directive 24, which “considers policy activism, foreign funding, and reformists as threats to national security.”

“Hanoi has recently adopted a policy of human rights abuses (Directive 24). The regime has also systematically violated the terms of the E.U.-Vietnam Free Trade Agreement and the E.U.- led Just Energy Transition Partnership Agreement by imprisoning many civil society leaders and progressive government officials involved in monitoring these agreements,” said Ben Swanton, co-director of Project 88.

“Borrell should prioritize securing the release of these political prisoners and demand the immediate repeal of Directive 24, and refrain from drawing Vietnam into an anti-China coalition during his visit to Vietnam.” 
''',
        imageUrl:
            "https://www.rfa.org/english/news/vietnam/environmental-campaigner-prison-07242024225217.html/@@images/4b12dba2-9a39-4806-9b18-9fce2dda2d0d.jpeg");

    var article11 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.global,
        title:
            "Europeans continue to feel directly affected by environmental issues and policy",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://environment.ec.europa.eu/news/europeans-continue-feel-directly-affected-environmental-issues-and-policy-2024-05-29_en",
        body: '''
Europeans continue to express high levels of concern about the environment, which they see as an issue affecting them personally, according to a new Eurobarometer survey on ‘Attitudes of Europeans towards the environment’ published today. 

More than three-quarters of Europeans (78%) say that environmental issues have a direct effect on their daily life and their health. And more than four in five respondents (84%) agree that EU environmental legislation is necessary for protecting the environment in their country. These results are nearly identical to those from the last survey conducted in 2019, highlighting the continued relevance of EU environmental policy. 

Citizens are also concerned about the costs of pollution. 92% of Europeans say that companies should pay for the costs of cleaning up their pollution, while 74% agree that public authorities should pay for the costs.
Concerns about water pollution and scarcity 

78% of respondents are in favour of proposing more EU measures to address water-related issues.

Pollution and overconsumption/wastage of water are seen as the two main national threats linked to water. In countries frequently affected by droughts, the number one threat in terms of water is droughts, as in Spain, Cyprus and Malta. Additionally, a majority of respondents considered that none of the most relevant sectors, such as industry, energy producers, tourism or agriculture, are currently doing enough to use water efficiently.
Support for circular economy and nature restoration 

Citizens consider promoting the circular economy as the most effective way of tackling environmental problems in 11 Member States, followed closely by restoring nature. 

Generally, there is a readiness towards more sustainable consumer behaviour with almost six in ten respondents willing to pay more for sustainable products that are easier to repair, recyclable and/or produced in an environmentally sustainable way.

As part of a more circular economy, citizens support reducing the amount of waste by sorting their waste for recycling correctly and using reusable packaging. In addition, in order to reduce waste, almost half of the respondents would primarily buy products that do not have more packaging than necessary and over 40% would primarily buy products in recycled packages. 

At the EU level as a whole, plastic and chemical waste are viewed as the most problematic, cited by 35% and 34% of respondents respectively.
Awareness of impacts of harmful chemicals 

More than four in five respondents (84%) are worried about the impact of harmful chemicals present in everyday products on their health, and the same proportion is worried about the impact of such chemicals on the environment. Since the 2019 survey, these concerns have remained almost steady.

The chemical safety of products is also taken into account by 72% of the Europeans interviewed when making purchases. 29% of Europeans say that they have heard about PFAS (also known as ‘forever chemicals’), while 71% have not. Then, once they have received more information about PFAS, 81% of respondents express concern about their potential impact on their health and 84% about the effects of such chemicals on the environment. Finally, EU environmental protection from hazardous chemicals is seen as too low, and should be increased, according to more than half of the respondents.

Speaking on the Eurobarometer survey, Commissioner for the Environment, Oceans and Fisheries Virginijus Sinkevičius said:

    “The results of this survey confirm the importance that green policies play in Europeans’ daily lives. I am encouraged to see this strong support for actions ranging from circular economy developments to nature restoration, at the heart of the European Green Deal. It is also clear that citizens think there is still more work to do to protect the environment, especially in areas such as chemical safety and water resilience.”

Background 

The survey is published during the annual EU Green Week conference “Towards a water resilient Europe” organised in Brussels on 29 and 30 May. At the conference, the Commission will launch a campaign to stimulate an EU-wide conversation about the increasing water-related challenges as well as the solutions to address them. 

The survey was carried out between 6 March and 8 April 2024 in the 27 EU Member States. 26,346 respondents from different social and demographic groups were interviewed face-to-face at home or via video link, in their mother tongue. 

This Special Eurobarometer survey is the follow-up of a Special Eurobarometer survey conducted in December 2019 on the same topic with some of the questions asked again to track evolution in public opinion.
''',
        imageUrl:
            "https://environment.ec.europa.eu/sites/default/files/styles/oe_theme_medium_2x_no_crop/public/2023-08/shutterstock_176401871.jpg?itok=QlTgzmXw");

    var article12 = db.Article(
        id: uuid.v4(),
        type: db.ArticleType.global,
        title:
            "Environmental pollution and human health – how worried should we be?",
        createdAt: DateTime.now().toUtc(),
        uri:
            "https://theconversation.com/environmental-pollution-and-human-health-how-worried-should-we-be-233819",
        body: '''
If not the root of all evil, chemical pollution is surely responsible for a good chunk of it. At least, that’s how it feels sometimes when reading the news and the latest research.

From hormone disruptors in our rivers and drugs in our drinking water, to PFAS and microplastics just about everywhere, it seems there’s plenty to worry about.

The list of potential health effects is also scary. Pollution is linked to infertility, cancer, reduced immune function, and more.

So it’s not surprising many people feel chemicals are intrinsically bad, though that’s not the case. But how worried should we really be, and can we reduce the risks? 

In the air we breathe

Globally, pollution is a serious problem – particularly air pollution. 

The Lancet Commission on pollution and health estimates pollution is responsible for about 9 million deaths a year and economic losses in the trillions of dollars.

The burden of disease falls heavily on developing countries, but even in Australia air pollution causes significant harm.

Fortunately, we can monitor air pollution, even at home. We know what levels are dangerous, and how to reduce exposure. But what about things we can’t monitor, or know less about?

The water we drink

In June, the Sydney Morning Herald implied tap water throughout Australia was contaminated with alarming levels of PFAS. But the levels detected fall within Australia’s drinking water guidelines. They just happen to exceed the United States’ new safety thresholds, which don’t come in for five years.

PFAS (Per- and polyfluoroalkyl substances) are a group of highly persistent chemicals characterised by carbon-fluorine bonds.

Although PFAS in your water sounds awful, we don’t know if water is the main route of exposure or what the actual risks are.

PFAS is also in dust, cookware, waterproof clothing, cosmetics, and other consumer products.

The presence of PFAS is an emotive subject, thanks to films such as Dark Waters and documentaries like How to Poison a Planet.

Found everywhere from Mount Everest to the ocean depths, PFAS have been associated with negative health effects including cancer and reduced immune response.

What is generally missing from both research papers and news reports is context – details on the dose and duration of exposure needed to cause such effects.

The levels of PFAS needed to cause health effects tend to be orders of magnitude higher than those typically found in the environment. So while it’s not great that we’ve polluted the entire planet with these compounds, the health risks for most of us are likely to be low.

New technologies are being developed to reduce PFAS in water and soil.

But given their widespread distribution and extreme persistence, we should perhaps reevaluate PFAS risks and regulations (as the National Health and Medical Research Council is doing).

If you want to reduce your exposure, you can consider using water filters and avoid non-stick pans and other products that contain PFAS.

Many non-stick pans now boast they are PFAS-free. Sadly this is not always the case. Ceramic pans can be a good, PFAS-free option, but these are actually silica-based and may not last as long.
''',
        imageUrl:
            "https://images.theconversation.com/files/605897/original/file-20240710-25-u30ucb.jpg?ixlib=rb-4.1.0&rect=16%2C559%2C5639%2C2815&q=45&auto=format&w=1356&h=668&fit=crop");

    dbClient.insertArticle(article9);
    dbClient.insertArticle(article10);
    dbClient.insertArticle(article11);
    dbClient.insertArticle(article12);
  }
}
