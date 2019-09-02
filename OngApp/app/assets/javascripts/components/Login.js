import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View

} from 'react-native';

import Logo from '../components/Logo';
import Form from '../components/Form';

export default class Login extends Component <{}>{
 render(){
           return(
             <View style={styles.container}>
                <Logo/>
                <Form type="Login"/>
                <View style={styles.signupTextCont}>
                   <Text style= {styles.signupText}>¿No tienes una cuenta?Registrate </Text>
                  <Text style= {{

                    color: '#00bfff',
                    fontWeight : '700' }}>aqui </Text>
                </View>
             </View>

           )
 }
}


const styles = StyleSheet.create({
  container : {
    backgroundColor: '#b22222',
      justifyContent: 'center',
      alignItems: 'center',
      flex : 1,
    },
    signupTextCont:{
        justifyContent: 'flex-end',
        marginVertical : 16,
        alignItems: 'center',
        flexGrow : 1,
        flexDirection : 'row',
      },
      signupText:{

      fontSize : 16,



      }



});
