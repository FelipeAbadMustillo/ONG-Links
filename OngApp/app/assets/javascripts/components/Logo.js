import React, { Component, PropTypes } from 'react';
import {
  StyleSheet,
  Text,
  View,
  Image,
} from 'react-native';

export default class Logo extends Component <{}>{
 render(){
           return(
             <View style ={styles.container}>
             <Image style={{
               width: 70,
               height: 70, }}
                source= {require('../images/engranajeTest.png')}/>
              <Text style = {styles.LogoText}>ONggggLinks</Text>
                </View>
           )
   }
}

const styles = StyleSheet.create({
  container : {
      flexGrow : 1,
      justifyContent : 'flex-end',
      alignItems : 'center',
  },
  LogoText:{
    marginVertical : 15,
     fontSize : 40,
     color: '#000000',

}
});
