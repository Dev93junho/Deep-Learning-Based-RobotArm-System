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

class jointstateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get = null;
    }
    else {
      if (initObj.hasOwnProperty('get')) {
        this.get = initObj.get
      }
      else {
        this.get = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jointstateRequest
    // Serialize message field [get]
    bufferOffset = _serializer.bool(obj.get, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jointstateRequest
    let len;
    let data = new jointstateRequest(null);
    // Deserialize message field [get]
    data.get = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'han2um_test/jointstateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09f518c966a327b7b44a7e1645859313';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool get
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jointstateRequest(null);
    if (msg.get !== undefined) {
      resolved.get = msg.get;
    }
    else {
      resolved.get = false
    }

    return resolved;
    }
};

class jointstateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.th0 = null;
      this.th1 = null;
      this.th2 = null;
      this.th3 = null;
    }
    else {
      if (initObj.hasOwnProperty('th0')) {
        this.th0 = initObj.th0
      }
      else {
        this.th0 = 0.0;
      }
      if (initObj.hasOwnProperty('th1')) {
        this.th1 = initObj.th1
      }
      else {
        this.th1 = 0.0;
      }
      if (initObj.hasOwnProperty('th2')) {
        this.th2 = initObj.th2
      }
      else {
        this.th2 = 0.0;
      }
      if (initObj.hasOwnProperty('th3')) {
        this.th3 = initObj.th3
      }
      else {
        this.th3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jointstateResponse
    // Serialize message field [th0]
    bufferOffset = _serializer.float64(obj.th0, buffer, bufferOffset);
    // Serialize message field [th1]
    bufferOffset = _serializer.float64(obj.th1, buffer, bufferOffset);
    // Serialize message field [th2]
    bufferOffset = _serializer.float64(obj.th2, buffer, bufferOffset);
    // Serialize message field [th3]
    bufferOffset = _serializer.float64(obj.th3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jointstateResponse
    let len;
    let data = new jointstateResponse(null);
    // Deserialize message field [th0]
    data.th0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th1]
    data.th1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th2]
    data.th2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th3]
    data.th3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'han2um_test/jointstateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c258b2f1adbf36fda60db76d5101a7b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 th0
    float64 th1
    float64 th2
    float64 th3
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jointstateResponse(null);
    if (msg.th0 !== undefined) {
      resolved.th0 = msg.th0;
    }
    else {
      resolved.th0 = 0.0
    }

    if (msg.th1 !== undefined) {
      resolved.th1 = msg.th1;
    }
    else {
      resolved.th1 = 0.0
    }

    if (msg.th2 !== undefined) {
      resolved.th2 = msg.th2;
    }
    else {
      resolved.th2 = 0.0
    }

    if (msg.th3 !== undefined) {
      resolved.th3 = msg.th3;
    }
    else {
      resolved.th3 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: jointstateRequest,
  Response: jointstateResponse,
  md5sum() { return '50eae85153eb979d8c8f4d321262116c'; },
  datatype() { return 'han2um_test/jointstate'; }
};
