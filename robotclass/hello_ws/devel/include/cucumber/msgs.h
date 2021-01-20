// Generated by gencpp from file cucumber/msgs.msg
// DO NOT EDIT!


#ifndef CUCUMBER_MESSAGE_MSGS_H
#define CUCUMBER_MESSAGE_MSGS_H

#include <ros/service_traits.h>


#include <cucumber/msgsRequest.h>
#include <cucumber/msgsResponse.h>


namespace cucumber
{

struct msgs
{

typedef msgsRequest Request;
typedef msgsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct msgs
} // namespace cucumber


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cucumber::msgs > {
  static const char* value()
  {
    return "851ebf8bfb1ad34675c9d5bed81ecf25";
  }

  static const char* value(const ::cucumber::msgs&) { return value(); }
};

template<>
struct DataType< ::cucumber::msgs > {
  static const char* value()
  {
    return "cucumber/msgs";
  }

  static const char* value(const ::cucumber::msgs&) { return value(); }
};


// service_traits::MD5Sum< ::cucumber::msgsRequest> should match
// service_traits::MD5Sum< ::cucumber::msgs >
template<>
struct MD5Sum< ::cucumber::msgsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cucumber::msgs >::value();
  }
  static const char* value(const ::cucumber::msgsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cucumber::msgsRequest> should match
// service_traits::DataType< ::cucumber::msgs >
template<>
struct DataType< ::cucumber::msgsRequest>
{
  static const char* value()
  {
    return DataType< ::cucumber::msgs >::value();
  }
  static const char* value(const ::cucumber::msgsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cucumber::msgsResponse> should match
// service_traits::MD5Sum< ::cucumber::msgs >
template<>
struct MD5Sum< ::cucumber::msgsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cucumber::msgs >::value();
  }
  static const char* value(const ::cucumber::msgsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cucumber::msgsResponse> should match
// service_traits::DataType< ::cucumber::msgs >
template<>
struct DataType< ::cucumber::msgsResponse>
{
  static const char* value()
  {
    return DataType< ::cucumber::msgs >::value();
  }
  static const char* value(const ::cucumber::msgsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CUCUMBER_MESSAGE_MSGS_H