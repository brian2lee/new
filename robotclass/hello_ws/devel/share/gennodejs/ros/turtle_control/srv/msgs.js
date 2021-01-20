// Auto-generated. Do not edit!

// (in-package turtle_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class msgsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.val = null;
      this.val2 = null;
    }
    else {
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = 0;
      }
      if (initObj.hasOwnProperty('val2')) {
        this.val2 = initObj.val2
      }
      else {
        this.val2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgsRequest
    // Serialize message field [val]
    bufferOffset = _serializer.int32(obj.val, buffer, bufferOffset);
    // Serialize message field [val2]
    bufferOffset = _serializer.int32(obj.val2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgsRequest
    let len;
    let data = new msgsRequest(null);
    // Deserialize message field [val]
    data.val = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [val2]
    data.val2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/msgsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da4c1574a633ac8680814f29d2ae1ca3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 val
    int32 val2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgsRequest(null);
    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = 0
    }

    if (msg.val2 !== undefined) {
      resolved.val2 = msg.val2;
    }
    else {
      resolved.val2 = 0
    }

    return resolved;
    }
};

class msgsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ans = null;
      this.ans2 = null;
    }
    else {
      if (initObj.hasOwnProperty('ans')) {
        this.ans = initObj.ans
      }
      else {
        this.ans = 0;
      }
      if (initObj.hasOwnProperty('ans2')) {
        this.ans2 = initObj.ans2
      }
      else {
        this.ans2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgsResponse
    // Serialize message field [ans]
    bufferOffset = _serializer.int32(obj.ans, buffer, bufferOffset);
    // Serialize message field [ans2]
    bufferOffset = _serializer.int32(obj.ans2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgsResponse
    let len;
    let data = new msgsResponse(null);
    // Deserialize message field [ans]
    data.ans = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ans2]
    data.ans2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/msgsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcef480b088150e87bb027341ad040d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ans
    int32 ans2
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgsResponse(null);
    if (msg.ans !== undefined) {
      resolved.ans = msg.ans;
    }
    else {
      resolved.ans = 0
    }

    if (msg.ans2 !== undefined) {
      resolved.ans2 = msg.ans2;
    }
    else {
      resolved.ans2 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: msgsRequest,
  Response: msgsResponse,
  md5sum() { return '0cd72adfcfa06c3a7a00d9b600768e39'; },
  datatype() { return 'turtle_control/msgs'; }
};
