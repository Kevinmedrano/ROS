// Auto-generated. Do not edit!

// (in-package trabajo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class multiplicadorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.entrada = null;
    }
    else {
      if (initObj.hasOwnProperty('entrada')) {
        this.entrada = initObj.entrada
      }
      else {
        this.entrada = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type multiplicadorRequest
    // Serialize message field [entrada]
    bufferOffset = _serializer.int32(obj.entrada, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type multiplicadorRequest
    let len;
    let data = new multiplicadorRequest(null);
    // Deserialize message field [entrada]
    data.entrada = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'trabajo/multiplicadorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67edd1fe0711f896798e7cddc0212ce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 entrada
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new multiplicadorRequest(null);
    if (msg.entrada !== undefined) {
      resolved.entrada = msg.entrada;
    }
    else {
      resolved.entrada = 0
    }

    return resolved;
    }
};

class multiplicadorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultado = null;
    }
    else {
      if (initObj.hasOwnProperty('resultado')) {
        this.resultado = initObj.resultado
      }
      else {
        this.resultado = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type multiplicadorResponse
    // Serialize message field [resultado]
    bufferOffset = _serializer.int32(obj.resultado, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type multiplicadorResponse
    let len;
    let data = new multiplicadorResponse(null);
    // Deserialize message field [resultado]
    data.resultado = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'trabajo/multiplicadorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31a0d3c58b9806438c76a1c70ea87b4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 resultado
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new multiplicadorResponse(null);
    if (msg.resultado !== undefined) {
      resolved.resultado = msg.resultado;
    }
    else {
      resolved.resultado = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: multiplicadorRequest,
  Response: multiplicadorResponse,
  md5sum() { return '6ce0274a72a6c619811bedbdd2184acd'; },
  datatype() { return 'trabajo/multiplicador'; }
};
