// Auto-generated. Do not edit!

// (in-package practicas.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class tipo_servicioRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.argumento1 = null;
      this.argumento2 = null;
    }
    else {
      if (initObj.hasOwnProperty('argumento1')) {
        this.argumento1 = initObj.argumento1
      }
      else {
        this.argumento1 = 0;
      }
      if (initObj.hasOwnProperty('argumento2')) {
        this.argumento2 = initObj.argumento2
      }
      else {
        this.argumento2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tipo_servicioRequest
    // Serialize message field [argumento1]
    bufferOffset = _serializer.int64(obj.argumento1, buffer, bufferOffset);
    // Serialize message field [argumento2]
    bufferOffset = _serializer.int64(obj.argumento2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tipo_servicioRequest
    let len;
    let data = new tipo_servicioRequest(null);
    // Deserialize message field [argumento1]
    data.argumento1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [argumento2]
    data.argumento2 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'practicas/tipo_servicioRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe55b827825314c8772a6284d89fd50a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 argumento1
    int64 argumento2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tipo_servicioRequest(null);
    if (msg.argumento1 !== undefined) {
      resolved.argumento1 = msg.argumento1;
    }
    else {
      resolved.argumento1 = 0
    }

    if (msg.argumento2 !== undefined) {
      resolved.argumento2 = msg.argumento2;
    }
    else {
      resolved.argumento2 = 0
    }

    return resolved;
    }
};

class tipo_servicioResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultado1 = null;
    }
    else {
      if (initObj.hasOwnProperty('resultado1')) {
        this.resultado1 = initObj.resultado1
      }
      else {
        this.resultado1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tipo_servicioResponse
    // Serialize message field [resultado1]
    bufferOffset = _serializer.int64(obj.resultado1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tipo_servicioResponse
    let len;
    let data = new tipo_servicioResponse(null);
    // Deserialize message field [resultado1]
    data.resultado1 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'practicas/tipo_servicioResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6a431a936da90ccdc31e14067c50778';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 resultado1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tipo_servicioResponse(null);
    if (msg.resultado1 !== undefined) {
      resolved.resultado1 = msg.resultado1;
    }
    else {
      resolved.resultado1 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: tipo_servicioRequest,
  Response: tipo_servicioResponse,
  md5sum() { return 'a979325dbca13dacf90a487ef6a5bb09'; },
  datatype() { return 'practicas/tipo_servicio'; }
};
