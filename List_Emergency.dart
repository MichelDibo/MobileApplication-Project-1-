

class List_Emergency{
  String Name;
  String Number;
  String Description;
  String Image;

  List_Emergency(this.Name,this.Number,this.Description,this.Image);


  @override
  String toString(){
    return "$Name ";
  }
}
List<List_Emergency> emergencyList = [
  List_Emergency("Police","112" ,
      "The Internal Security Forces are general armed forces whose prerogatives cover all the Lebanese territory and its regional waters and airspace "
      ,"https://upload.wikimedia.org/wikipedia/commons/2/2e/InternalSecurityForcesLebanon.png"),
  List_Emergency("Red Cross", "140" , "The Lebanese Red Cross Society is led by volunteers, whose mission is to provide relief to victims of natural and human made disasters, and help people prevent, prepare for and respond to emergencies, and to mitigate the suffering of the most vulnerable."
      , "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_the_Red_Cross.svg/1024px-Flag_of_the_Red_Cross.svg.png"),
  List_Emergency("Civil Defense", "125" , "The Lebanese Civil Defense or General Directorate of the Lebanese Civil Defense is a public emergency medical service of Lebanon that carries out patient transportation, search and rescue activities and fire-fighting response. It is funded and administered by the Ministry of Interior and Municipalities (Lebanon)."
      , "data:image/jpeg;base64,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"),
  List_Emergency("General Security", "1717" , "The mission of the General Security is to gather information on behalf of the Lebanese government, notably political, economic and social information. GDGS is entrusted with carrying out judiciary investigations in violations committed against the state's internal or external security."
      ,"https://upload.wikimedia.org/wikipedia/commons/4/48/GeneralDirectorateOfGeneralSecurityLebanon.png"),
  List_Emergency("Lebanese Army", "1701" , "The Lebanese Armed Forces : romanized: Al-Quwwāt al-Musallaḥa al-Lubnāniyya), also known as the Lebanese Army[3] romanized: Al-Jaish al-Lubnani), is the military of the Lebanese Republic. It consists of three branches, the ground forces, the air force, and the navy. The motto of the Lebanese Armed Forces is 'Honor, Sacrifice, Loyalty' ."
      , "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Emblema_de_las_Fuerzas_Armadas_Libanesas.svg/1200px-Emblema_de_las_Fuerzas_Armadas_Libanesas.svg.png"),
];