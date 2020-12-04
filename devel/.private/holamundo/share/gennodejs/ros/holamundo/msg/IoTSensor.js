// Auto-generated. Do not edit!

// (in-package holamundo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class IoTSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.region = null;
      this.temperatura = null;
      this.humedad = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('region')) {
        this.region = initObj.region
      }
      else {
        this.region = '';
      }
      if (initObj.hasOwnProperty('temperatura')) {
        this.temperatura = initObj.temperatura
      }
      else {
        this.temperatura = 0.0;
      }
      if (initObj.hasOwnProperty('humedad')) {
        this.humedad = initObj.humedad
      }
      else {
        this.humedad = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IoTSensor
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [region]
    bufferOffset = _serializer.string(obj.region, buffer, bufferOffset);
    // Serialize message field [temperatura]
    bufferOffset = _serializer.float32(obj.temperatura, buffer, bufferOffset);
    // Serialize message field [humedad]
    bufferOffset = _serializer.float32(obj.humedad, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IoTSensor
    let len;
    let data = new IoTSensor(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [region]
    data.region = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temperatura]
    data.temperatura = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [humedad]
    data.humedad = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.region.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'holamundo/IoTSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc380b2aacba9ecd7c71cb52d71dc748';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string region
    float32 temperatura
    float32 humedad
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IoTSensor(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.region !== undefined) {
      resolved.region = msg.region;
    }
    else {
      resolved.region = ''
    }

    if (msg.temperatura !== undefined) {
      resolved.temperatura = msg.temperatura;
    }
    else {
      resolved.temperatura = 0.0
    }

    if (msg.humedad !== undefined) {
      resolved.humedad = msg.humedad;
    }
    else {
      resolved.humedad = 0.0
    }

    return resolved;
    }
};

module.exports = IoTSensor;
