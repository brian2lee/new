// Generated by gencpp from file cucumber/msgsResponse.msg
// DO NOT EDIT!


#ifndef CUCUMBER_MESSAGE_MSGSRESPONSE_H
#define CUCUMBER_MESSAGE_MSGSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cucumber
{
template <class ContainerAllocator>
struct msgsResponse_
{
  typedef msgsResponse_<ContainerAllocator> Type;

  msgsResponse_()
    : ans(0.0)
    , ans2(0.0)
    , ans3(0.0)
    , ans4(0.0)  {
    }
  msgsResponse_(const ContainerAllocator& _alloc)
    : ans(0.0)
    , ans2(0.0)
    , ans3(0.0)
    , ans4(0.0)  {
  (void)_alloc;
    }



   typedef float _ans_type;
  _ans_type ans;

   typedef float _ans2_type;
  _ans2_type ans2;

   typedef float _ans3_type;
  _ans3_type ans3;

   typedef float _ans4_type;
  _ans4_type ans4;





  typedef boost::shared_ptr< ::cucumber::msgsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cucumber::msgsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct msgsResponse_

typedef ::cucumber::msgsResponse_<std::allocator<void> > msgsResponse;

typedef boost::shared_ptr< ::cucumber::msgsResponse > msgsResponsePtr;
typedef boost::shared_ptr< ::cucumber::msgsResponse const> msgsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cucumber::msgsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cucumber::msgsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cucumber::msgsResponse_<ContainerAllocator1> & lhs, const ::cucumber::msgsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ans == rhs.ans &&
    lhs.ans2 == rhs.ans2 &&
    lhs.ans3 == rhs.ans3 &&
    lhs.ans4 == rhs.ans4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cucumber::msgsResponse_<ContainerAllocator1> & lhs, const ::cucumber::msgsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cucumber

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cucumber::msgsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cucumber::msgsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cucumber::msgsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cucumber::msgsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cucumber::msgsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cucumber::msgsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cucumber::msgsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d6fd4a202471eeb9c1fbbb6d2c9e164f";
  }

  static const char* value(const ::cucumber::msgsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd6fd4a202471eeb9ULL;
  static const uint64_t static_value2 = 0xc1fbbb6d2c9e164fULL;
};

template<class ContainerAllocator>
struct DataType< ::cucumber::msgsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cucumber/msgsResponse";
  }

  static const char* value(const ::cucumber::msgsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cucumber::msgsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 ans\n"
"float32 ans2\n"
"float32 ans3\n"
"float32 ans4\n"
"\n"
"\n"
;
  }

  static const char* value(const ::cucumber::msgsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cucumber::msgsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ans);
      stream.next(m.ans2);
      stream.next(m.ans3);
      stream.next(m.ans4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cucumber::msgsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cucumber::msgsResponse_<ContainerAllocator>& v)
  {
    s << indent << "ans: ";
    Printer<float>::stream(s, indent + "  ", v.ans);
    s << indent << "ans2: ";
    Printer<float>::stream(s, indent + "  ", v.ans2);
    s << indent << "ans3: ";
    Printer<float>::stream(s, indent + "  ", v.ans3);
    s << indent << "ans4: ";
    Printer<float>::stream(s, indent + "  ", v.ans4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUCUMBER_MESSAGE_MSGSRESPONSE_H