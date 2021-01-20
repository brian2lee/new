// Auto-generated. Do not edit!

// (in-package cucumber.srv)


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
        this.val = 0.0;
      }
      if (initObj.hasOwnProperty('val2')) {
        this.val2 = initObj.val2
      }
      else {
        this.val2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgsRequest
    // Serialize message field [val]
    bufferOffset = _serializer.float32(obj.val, buffer, bufferOffset);
    // Serialize message field [val2]
    bufferOffset = _serializer.float32(obj.val2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgsRequest
    let len;
    let data = new msgsRequest(null);
    // Deserialize message field [val]
    data.val = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [val2]
    data.val2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cucumber/msgsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81541c8dc4bac0a46b3cb9296575a129';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 val
    float32 val2
    
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
      resolved.val = 0.0
    }

    if (msg.val2 !== undefined) {
      resolved.val2 = msg.val2;
    }
    else {
      resolved.val2 = 0.0
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
      this.ans3 = null;
      this.ans4 = null;
    }
    else {
      if (initObj.hasOwnProperty('ans')) {
        this.ans = initObj.ans
      }
      else {
        this.ans = 0.0;
      }
      if (initObj.hasOwnProperty('ans2')) {
        this.ans2 = initObj.ans2
      }
      else {
        this.ans2 = 0.0;
      }
      if (initObj.hasOwnProperty('ans3')) {
        this.ans3 = initObj.ans3
      }
      else {
        this.ans3 = 0.0;
      }
      if (initObj.hasOwnProperty('ans4')) {
        this.ans4 = initObj.ans4
      }
      else {
        this.ans4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgsResponse
    // Serialize message field [ans]
    bufferOffset = _serializer.float32(obj.ans, buffer, bufferOffset);
    // Serialize message field [ans2]
    bufferOffset = _serializer.float32(obj.ans2, buffer, bufferOffset);
    // Serialize message field [ans3]
    bufferOffset = _serializer.float32(obj.ans3, buffer, bufferOffset);
    // Serialize message field [ans4]
    bufferOffset = _serializer.float32(obj.ans4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgsResponse
    let len;
    let data = new msgsResponse(null);
    // Deserialize message field [ans]
    data.ans = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ans2]
    data.ans2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ans3]
    data.ans3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ans4]
    data.ans4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cucumber/msgsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6fd4a202471eeb9c1fbbb6d2c9e164f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ans
    float32 ans2
    float32 ans3
    float32 ans4
    
    
    
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
      resolved.ans = 0.0
    }

    if (msg.ans2 !== undefined) {
      resolved.ans2 = msg.ans2;
    }
    else {
      resolved.ans2 = 0.0
    }

    if (msg.ans3 !== undefined) {
      resolved.ans3 = msg.ans3;
    }
    else {
      resolved.ans3 = 0.0
    }

    if (msg.ans4 !== undefined) {
      resolved.ans4 = msg.ans4;
    }
    else {
      resolved.ans4 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: msgsRequest,
  Response: msgsResponse,
  md5sum() { return '851ebf8bfb1ad34675c9d5bed81ecf25'; },
  datatype() { return 'cucumber/msgs'; }
};
