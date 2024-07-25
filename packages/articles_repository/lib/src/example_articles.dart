import "package:db/db.dart" as db;
import 'package:articles_repository/articles_repository.dart';
import 'package:uuid/uuid.dart';

class ExampleArticles {
  ExampleArticles(this.dbClient);

  final db.DbClient dbClient;
  final uuid = const Uuid();

  void createArticles() {
    //LOCAL ARTICLES

    print("ARITCLES BEING GENERATRED");

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

    print("ARTICLES FINISHED GENERATING");
  }
}
