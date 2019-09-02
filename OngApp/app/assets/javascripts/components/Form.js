import React, { Component, PropTypes } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  TouchableOpacity,
} from 'react-native';

export default class Logo extends Component <{}>{

 render(){
           return(
             <View style ={styles.container}>
                <TextInput style={styles.inputBox}
                underlineColorAndroid='#dcdcdc'
                placeholder="Gmail"
                placeholderTextColor='#ffffff'
                />
                <TextInput style={styles.inputBox}
                underlineColorAndroid='#dcdcdc'
                placeholder="Contraseña"
                secureTextEntry ={true}
                placeholderTextColor='#000000'
                />

                <TouchableOpacity style={styles.button}>
                <Text style={styles.buttonText}>{this.props.type}</Text>
                </TouchableOpacity>
             </View>
           )
   }
}

const styles = StyleSheet.create({
  container : {
      flexGrow : 1,
      justifyContent : 'center',
      alignItems : 'center',
  },
  inputBox: {
     width: 300,
     height: 50,
     backgroundColor : '#dcdcdc',
     borderRadius: 25,
     paddingHorizontal:16,
     fontSize:15,
     marginVertical: 10,
     borderColor:'#00ffff',
   },
   buttonText :{
     fontSize:16,
     fontWeight: '500',
     color: '#ffff',
   },
   button:{
     width : 160,
     backgroundColor : '#6495ed',
     borderRadius: 25,
     color: '#ffffff',
     marginVertical: 30,
     paddingVertical : 12,
     alignItems : 'center',
   }


 });
