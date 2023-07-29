import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'list page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Image.asset('lib/images/ai1.jpg'),
            const SizedBox(height: 20,),
            const Text('What is artificial intelligence (AI)?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 20,),
            const Text("Artificial intelligence is the simulation of human intelligence processes by machines, especially computer systems. Specific applications of AI include expert systems, natural language processing, speech recognition and machine vision.How does AI work?As the hype around AI has accelerated, vendors have been scrambling to promote how their products and services use it. Often, what they refer to as AI is simply a component of the technology, such as machine learning. AI requires a foundation of specialized hardware and software for writing and training machine learning algorithms. No single programming language is synonymous with AI, but Python, R, Java, C++ and Julia have features popular with AI developers."),
            const SizedBox(height: 20,),
            Image.asset('lib/images/ai2.jpg',width: 300,),
            const SizedBox(height: 20,),
            const Text('How does AI work?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 20,),
            const Text('As the hype around AI has accelerated, vendors have been scrambling to promote how their products and services use it. Often, what they refer to as AI is simply a component of the technology, such as machine learning. AI requires a foundation of specialized hardware and software for writing and training machine learning algorithms. No single programming language is synonymous with AI, but Python, R, Java, C++ and Julia have features popular with AI developers.'),
            const SizedBox(height: 20,),
            Image.asset('lib/images/ai3.jpg'),
            const SizedBox(height: 20,),
            const Text('Why is artificial intelligence important?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 20,),
            const Text('AI is important for its potential to change how we live, work and play. It has been effectively used in business to automate tasks done by humans, including customer service work, lead generation, fraud detection and quality control. In a number of areas, AI can perform tasks much better than humans. Particularly when it comes to repetitive, detail-oriented tasks, such as analyzing large numbers of legal documents to ensure relevant fields are filled in properly, AI tools often complete jobs quickly and with relatively few errors. Because of the massive data sets it can process, AI can also give enterprises insights into their operations they might not have been aware of. The rapidly expanding population of generative AI tools will be important in fields ranging from education and marketing to product design.'),
            const SizedBox(height: 20,),
            Image.asset('lib/images/ai4.jpg'),
            const SizedBox(height: 20,),
            const Text('What are the advantages and disadvantages of artificial intelligence?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 20,),
            const Text('Artificial neural networks and deep learning AI technologies are quickly evolving, primarily because AI can process large amounts of data much faster and make predictions more accurately than humanly possible.While the huge volume of data created on a daily basis would bury a human researcher, AI applications using machine learning can take that data and quickly turn it into actionable information. As of this writing, a primary disadvantage of AI is that it is expensive to process the large amounts of data AI programming requires. As AI techniques are incorporated into more products and services, organizations must also be attuned to AIs potential to create biased and discriminatory systems, intentionally or inadvertently.'),
            const SizedBox(height: 20,),

            InkWell(
              child: Container(
              
              ),
            ),
            Padding(
               padding: const EdgeInsets.only(right: 50,left:50),
               child: ElevatedButton.icon(
                  onPressed: () {
                    moveFront(context);
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Next'),
                ),
             ),

          ]
        ),
      ),
      ),
    );
  }
  void moveFront(BuildContext ctx)async{

    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.clear();

    
    // ignore: use_build_context_synchronously
    Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) => const ListPage()),(route)=>false);
    
  }
  
}
