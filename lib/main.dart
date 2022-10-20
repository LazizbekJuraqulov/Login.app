import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_5/uyin.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ContacsPage(),
  ));
}

class ContacsPage extends StatefulWidget {
  const ContacsPage({Key? key}) : super(key: key);

  @override
  State<ContacsPage> createState() => _ContacsPageState();
}

class _ContacsPageState extends State<ContacsPage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;
  late bool isEror;
  late bool isEyes=true;
  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    isEror = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return [];
          })
        ],
      ),
      body: ListView(
        children: [Container(
        margin: EdgeInsets.only(top: 20),
        child: Form(
          key: _formKey,
          child: Column(
          
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.person,
                    size: 40,
                  ),
                  Container(
                    width: 280,
                    child: TextFormField(
                      controller: _nameController,
                      onChanged:(value){
        
                      } ,
                      validator: (value) {
                        if (value!.length<3) {
                          return "Harflar 3 tadan kam!!";
                          
                        }
                        
                      },
                      decoration: InputDecoration(
                        focusColor: Colors.amber,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "name",
                        labelText: "name",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.call_outlined,
                    size: 40,
                  ),
                  Container(
                    width: 160,
                    child: TextFormField(
                      validator: (va) {
                        if (va!.length<1) {
                          return "Nomer kiriting";
                          
                        }
                      },
                      keyboardType:TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "Phone",
                        labelText: "Phone",
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextFormField(
                      validator: (va) {
                        if (va!.length<1) {
                          return "Area kiriting";
                          
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "Area",
                        labelText: "Area",
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 40,
                  ),
                  Container(
                    width: 280,
                    child: TextFormField(
                      validator: (va) {
                        if (va!.length<2) {
                          return "Address kiriting";
                          
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "Address",
                        labelText: "Address",
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.location_city_sharp,
                    size: 40,
                  ),
                  Container(
                    width: 280,
                    child: TextFormField(
                      validator: (va) {
                        if (va!.length<1) {
                          return "City kiritilmadi";
                          
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "City",
                        labelText: "City",
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                  ),
                  Container(
                    width: 130,
                    
                    child: TextFormField(
                      validator: (va) {
                        if (va!.length<1) {
                          return "State kiritilmadi";
                          
                        }
                      },
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "State",
                        labelText: "State",
                      ),
        
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextFormField( 
                      validator: (va) {
                        if (va!.length<1) {
                          return "Zip kiritilmadi";
                          
                        }
                      },
                       decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "Zip",
                        labelText: "Zip",
                      ),),
                  ),
                ],
              ),
                SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.email,
                    size: 40,
                  ),
                  Container(
                    width: 280,
                    child: TextFormField(
                      validator: (w) {
                        if (w!.length<1) {
                          return "Email kiritilmadi";
                          
                        }
                        
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "@email.com",
                        labelText: "@gmail.com",
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.password
                    ,
                    size: 40,
                  ),
                  Container(
                    width: 280,
                    child: TextFormField(
                      validator: ((d) {
                        if (d!.length<7) {
                          return "Password 7 ta sinboldan ko'p bo'lish kerak";
                          
                        }
                      }),
                      obscureText: isEyes,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        fillColor: Colors.black,
                        hintText: "Password",
                        labelText: "Password",
                        suffixIcon: IconButton(onPressed: ()
                        {
                          isEyes ? isEyes=false:isEyes=true;
                          setState(() {
                            
                          });
                        }, icon: Icon(isEyes?Icons.energy_savings_leaf:Icons.remove_red_eye)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return UyinPage();
                  }));
                  
                  }
                  
                  
                },child: Text("Enter"),),
              ),
              
            ],
          ),
        ),
      ),],
      ),
    );
  }
}
