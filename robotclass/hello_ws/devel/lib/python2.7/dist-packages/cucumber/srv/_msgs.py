# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cucumber/msgsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class msgsRequest(genpy.Message):
  _md5sum = "81541c8dc4bac0a46b3cb9296575a129"
  _type = "cucumber/msgsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 val
float32 val2
"""
  __slots__ = ['val','val2']
  _slot_types = ['float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       val,val2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(msgsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.val is None:
        self.val = 0.
      if self.val2 is None:
        self.val2 = 0.
    else:
      self.val = 0.
      self.val2 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2f().pack(_x.val, _x.val2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 8
      (_x.val, _x.val2,) = _get_struct_2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2f().pack(_x.val, _x.val2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 8
      (_x.val, _x.val2,) = _get_struct_2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cucumber/msgsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class msgsResponse(genpy.Message):
  _md5sum = "d6fd4a202471eeb9c1fbbb6d2c9e164f"
  _type = "cucumber/msgsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 ans
float32 ans2
float32 ans3
float32 ans4


"""
  __slots__ = ['ans','ans2','ans3','ans4']
  _slot_types = ['float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ans,ans2,ans3,ans4

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(msgsResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ans is None:
        self.ans = 0.
      if self.ans2 is None:
        self.ans2 = 0.
      if self.ans3 is None:
        self.ans3 = 0.
      if self.ans4 is None:
        self.ans4 = 0.
    else:
      self.ans = 0.
      self.ans2 = 0.
      self.ans3 = 0.
      self.ans4 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_4f().pack(_x.ans, _x.ans2, _x.ans3, _x.ans4))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.ans, _x.ans2, _x.ans3, _x.ans4,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4f().pack(_x.ans, _x.ans2, _x.ans3, _x.ans4))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.ans, _x.ans2, _x.ans3, _x.ans4,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
class msgs(object):
  _type          = 'cucumber/msgs'
  _md5sum = '851ebf8bfb1ad34675c9d5bed81ecf25'
  _request_class  = msgsRequest
  _response_class = msgsResponse
