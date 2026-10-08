import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    List<Map<String, dynamic>> contacts = [
      {
        'name': 'Jawad',
        'phone': '01877-777777',
      },
      {
        'name': 'Ferdous',
        'phone': '01673-777777',
      },
      {
        'name': 'Hasan',
        'phone': '01745-777777',
      },
      {
        'name': 'Hasan',
        'phone': '01745-777777',
      },
      {
        'name': 'Hasan',
        'phone': '01745-777777',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Form(
              key: _formKey,
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 3
                      )
                    ),
                    labelText: 'Name',
                    hintText: 'Enter name'
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter a Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 3
                      )
                    ),
                    labelText: 'Phone Number',
                    hintText: 'Enter Phone Number'
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Enter a Phone Number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          print('Form is valid');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.blueGrey,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                      child: Text('Add')
                  ),
                ),
              )
            ],
          )),
          SizedBox(height: 30,),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Card(
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(contacts[index]['name'],style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                        subtitle: Text(contacts[index]['phone']),
                        leading: Icon(Icons.person,size: 40,color: Colors.brown,),
                        trailing: Icon(Icons.call,size: 30,color: Colors.blue,),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
