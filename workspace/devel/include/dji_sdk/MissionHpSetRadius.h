// Generated by gencpp from file dji_sdk/MissionHpSetRadius.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_MISSIONHPSETRADIUS_H
#define DJI_SDK_MESSAGE_MISSIONHPSETRADIUS_H

#include <ros/service_traits.h>


#include <dji_sdk/MissionHpSetRadiusRequest.h>
#include <dji_sdk/MissionHpSetRadiusResponse.h>


namespace dji_sdk
{

struct MissionHpSetRadius
{

typedef MissionHpSetRadiusRequest Request;
typedef MissionHpSetRadiusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MissionHpSetRadius
} // namespace dji_sdk


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dji_sdk::MissionHpSetRadius > {
  static const char* value()
  {
    return "44e997bb8d1a50ef179a59895af1c426";
  }

  static const char* value(const ::dji_sdk::MissionHpSetRadius&) { return value(); }
};

template<>
struct DataType< ::dji_sdk::MissionHpSetRadius > {
  static const char* value()
  {
    return "dji_sdk/MissionHpSetRadius";
  }

  static const char* value(const ::dji_sdk::MissionHpSetRadius&) { return value(); }
};


// service_traits::MD5Sum< ::dji_sdk::MissionHpSetRadiusRequest> should match 
// service_traits::MD5Sum< ::dji_sdk::MissionHpSetRadius > 
template<>
struct MD5Sum< ::dji_sdk::MissionHpSetRadiusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::MissionHpSetRadius >::value();
  }
  static const char* value(const ::dji_sdk::MissionHpSetRadiusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::MissionHpSetRadiusRequest> should match 
// service_traits::DataType< ::dji_sdk::MissionHpSetRadius > 
template<>
struct DataType< ::dji_sdk::MissionHpSetRadiusRequest>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::MissionHpSetRadius >::value();
  }
  static const char* value(const ::dji_sdk::MissionHpSetRadiusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dji_sdk::MissionHpSetRadiusResponse> should match 
// service_traits::MD5Sum< ::dji_sdk::MissionHpSetRadius > 
template<>
struct MD5Sum< ::dji_sdk::MissionHpSetRadiusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dji_sdk::MissionHpSetRadius >::value();
  }
  static const char* value(const ::dji_sdk::MissionHpSetRadiusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dji_sdk::MissionHpSetRadiusResponse> should match 
// service_traits::DataType< ::dji_sdk::MissionHpSetRadius > 
template<>
struct DataType< ::dji_sdk::MissionHpSetRadiusResponse>
{
  static const char* value()
  {
    return DataType< ::dji_sdk::MissionHpSetRadius >::value();
  }
  static const char* value(const ::dji_sdk::MissionHpSetRadiusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DJI_SDK_MESSAGE_MISSIONHPSETRADIUS_H
