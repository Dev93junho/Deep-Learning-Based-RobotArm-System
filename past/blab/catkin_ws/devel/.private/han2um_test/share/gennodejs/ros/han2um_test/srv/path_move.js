// Auto-generated. Do not edit!

// (in-package han2um_test.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class path_moveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fpos_x = null;
      this.fpos_y = null;
      this.fpos_z = null;
    }
    else {
      if (initObj.hasOwnProperty('fpos_x')) {
        this.fpos_x = initObj.fpos_x
      }
      else {
        this.fpos_x = 0.0;
      }
      if (initObj.hasOwnProperty('fpos_y')) {
        this.fpos_y = initObj.fpos_y
      }
      else {
        this.fpos_y = 0.0;
      }
      if (initObj.hasOwnProperty('fpos_z')) {
        this.fpos_z = initObj.fpos_z
      }
      else {
        this.fpos_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type path_moveRequest
    // Serialize message field [fpos_x]
    bufferOffset = _serializer.float64(obj.fpos_x, buffer, bufferOffset);
    // Serialize message field [fpos_y]
    bufferOffset = _serializer.float64(obj.fpos_y, buffer, bufferOffset);
    // Serialize message field [fpos_z]
    bufferOffset = _serializer.float64(obj.fpos_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type path_moveRequest
    let len;
    let data = new path_moveRequest(null);
    // Deserialize message field [fpos_x]
    data.fpos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fpos_y]
    data.fpos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fpos_z]
    data.fpos_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'han2um_test/path_moveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '046452153b651bcb11a63b8f50f696ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 fpos_x
    float64 fpos_y
    float64 fpos_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new path_moveRequest(null);
    if (msg.fpos_x !== undefined) {
      resolved.fpos_x = msg.fpos_x;
    }
    else {
      resolved.fpos_x = 0.0
    }

    if (msg.fpos_y !== undefined) {
      resolved.fpos_y = msg.fpos_y;
    }
    else {
      resolved.fpos_y = 0.0
    }

    if (msg.fpos_z !== undefined) {
      resolved.fpos_z = msg.fpos_z;
    }
    else {
      resolved.fpos_z = 0.0
    }

    return resolved;
    }
};

class path_moveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task = null;
    }
    else {
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type path_moveResponse
    // Serialize message field [task]
    bufferOffset = _serializer.bool(obj.task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type path_moveResponse
    let len;
    let data = new path_moveResponse(null);
    // Deserialize message field [task]
    data.task = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'han2um_test/path_moveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e0b2940b5e773889a2f9a1e4538c9dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool task
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new path_moveResponse(null);
    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = false
    }

    return resolved;
    }
};

module.exports = {
  Request: path_moveRequest,
  Response: path_moveResponse,
  md5sum() { return '744c937c05cffa87d3ea129969217073'; },
  datatype() { return 'han2um_test/path_move'; }
};
