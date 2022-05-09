class status {
  String? status01 = 'Available' ;
  String? status02 = 'In Process' ;
  String? status03 = 'Unavailable' ;

  status({ this.status01 , this.status02 , this.status03 });

  String? getStatus( int stat ){
    if( stat == 'status01' ){
      return status01;
    }else if( stat == 'status02' ){
      return status02;
    }else
      return status03;
  }

}