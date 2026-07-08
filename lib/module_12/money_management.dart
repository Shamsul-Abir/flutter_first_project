//money management apps.

import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  List<Map<String, dynamic>> _expense = [];
  List<Map<String, dynamic>> _earning = [];

  //equation o total earning, expense & balance
  double get totalExpense =>_expense.fold(0, (sum, item) => sum+item['amount']);
  double get totalEarning =>_earning.fold(0, (sum, item) => sum+item['amount']);
  double get balance => totalEarning - totalExpense;

  void _addEntry(String title, double amount, DateTime date, bool isEarning){
    setState(() {
      if(isEarning){
        _earning.add({'title': title,
          'amount': amount,
          'date': date,
        });
      }else{
        _expense.add(
            {'title': title,
              'amount': amount,
              'date': date,
            }
        );
      }
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _showFABOptions(BuildContext context){
    showModalBottomSheet(
        context: context,
        // Add the shape property here
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.0),  // Set to 0.0 for a perfect sharp rectangle
            topRight: Radius.circular(4.0), // Set to 0.0 for a perfect sharp rectangle
          ),
        ),
        builder: (context){
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                      _showForm(isEarning: true);
                    }, child: Text('Add Earning', style: TextStyle(color: Colors.white))),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                      _showForm(isEarning: false);
                    }, child: Text('Add Expense', style: TextStyle(color: Colors.white)))
              ],
            ),
          );
        }
    );
  }

  void _showForm({required bool isEarning}){
    //for the field of Title & Amount in the + button
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime entryDate = DateTime.now();

    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(
              isEarning ? 'Add Earning' : 'Add Expense',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isEarning ? Colors.green : Colors.red,
                  ),
                  onPressed: (){
                    if(titleController.text.isNotEmpty && amountController.text.isNotEmpty){
                      _addEntry(titleController.text , double.parse(amountController.text), DateTime.now(), isEarning);
                      // instead of using entryTime, we replace it will DateTime.now()
                      Navigator.pop(context);
                    }
                  }, child: Text(isEarning ? 'Add Earning' : 'Add Expense',
              style:TextStyle(
                fontSize: 16
              ),)),
            )

          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Management',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),),
        bottom: TabBar(
            controller: _tabController,
          tabs: [
          Tab(
            icon: Icon(Icons.arrow_downward, color: Colors.white,),
            child: Text("Earning",style: TextStyle(color: Colors.white)),
          ),
          Tab(
            icon: Icon(Icons.arrow_upward,color: Colors.white,),
            child: Text('Expense', style: TextStyle(color: Colors.white)),
          ),

        ]),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              _buildSummaryCard(title: 'Earning', value: totalEarning, color: Colors.green),
              _buildSummaryCard(title: 'Expense', value: totalExpense, color: Colors.redAccent),
              _buildSummaryCard(title: 'Balance', value: balance, color: Colors.blue),
            ],
          ),

          SizedBox(height: 5,),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
              _buildList(_earning, Colors.green, true),
              _buildList(_expense, Colors.red, false)
            ]),
          )
        ],
      ),

      //add a floating action button in the app
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(), //to change the shape into circle
        onPressed: ()=>_showFABOptions(context),
        child: Icon(Icons.add, color: Colors.white,),
        //here I have added icon color & background color
        backgroundColor: Colors.teal,
      ),
    );
  }
}

//build a widget in a simple short way (such as function)
Widget _buildSummaryCard({required String title, required double value, required Color color}){
  return Expanded(
    child: Card(
      color: color,
      child: Padding(
         padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(title,style:
            TextStyle(
                fontSize: 16,
                color: Colors.white
            ),
            ),
            Text(value.toString(),style:
            TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildList(List<Map<String, dynamic>>items, Color color, bool isEarning){
  return ListView.builder(
      itemCount: items.length,

      itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(isEarning ? Icons.arrow_downward : Icons.arrow_upward,color: color,),
            ),
            title: Text(items[index]['title'], style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            subtitle: Text(items[index]['date'].toString()),
            trailing: Text(
              '৳ ${items[index]['amount']}',
              style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        );
      });
}

//1 hour 35 minutes