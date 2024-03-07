/* eslint-disable react-native/no-inline-styles */
import React from 'react';
import {Button, NativeModules, View} from 'react-native';

const {LiveActivity} = NativeModules;

const App = () => {
  const onStartActivity = () => {
    LiveActivity.startActivity();
  };

  return (
    <View
      style={{
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
      }}>
      <Button title="Start Activity" onPress={onStartActivity} />
    </View>
  );
};

export default App;
