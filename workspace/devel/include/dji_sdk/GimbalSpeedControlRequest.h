// Generated by gencpp from file dji_sdk/GimbalSpeedControlRequest.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_GIMBALSPEEDCONTROLREQUEST_H
#define DJI_SDK_MESSAGE_GIMBALSPEEDCONTROLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_sdk
{
template <class ContainerAllocator>
struct GimbalSpeedControlRequest_
{
  typedef GimbalSpeedControlRequest_<ContainerAllocator> Type;

  GimbalSpeedControlRequest_()
    : yaw_rate(0)
    , roll_rate(0)
    , pitch_rate(0)  {
    }
  GimbalSpeedControlRequest_(const ContainerAllocator& _alloc)
    : yaw_rate(0)
    , roll_rate(0)
    , pitch_rate(0)  {
  (void)_alloc;
    }



   typedef int16_t _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef int16_t _roll_rate_type;
  _roll_rate_type roll_rate;

   typedef int16_t _pitch_rate_type;
  _pitch_rate_type pitch_rate;




  typedef boost::shared_ptr< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GimbalSpeedControlRequest_

typedef ::dji_sdk::GimbalSpeedControlRequest_<std::allocator<void> > GimbalSpeedControlRequest;

typedef boost::shared_ptr< ::dji_sdk::GimbalSpeedControlRequest > GimbalSpeedControlRequestPtr;
typedef boost::shared_ptr< ::dji_sdk::GimbalSpeedControlRequest const> GimbalSpeedControlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'dji_sdk': ['/home/ubuntu/m100-ros-test/workspace/src/dji_sdk/msg', '/home/ubuntu/m100-ros-test/workspace/devel/share/dji_sdk/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7e08b9aa20908d19435cff07f74cf49";
  }

  static const char* value(const ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7e08b9aa20908d1ULL;
  static const uint64_t static_value2 = 0x9435cff07f74cf49ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/GimbalSpeedControlRequest";
  }

  static const char* value(const ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
int16 yaw_rate\n\
int16 roll_rate\n\
int16 pitch_rate\n\
\n\
";
  }

  static const char* value(const ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.yaw_rate);
      stream.next(m.roll_rate);
      stream.next(m.pitch_rate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GimbalSpeedControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::GimbalSpeedControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "yaw_rate: ";
    Printer<int16_t>::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "roll_rate: ";
    Printer<int16_t>::stream(s, indent + "  ", v.roll_rate);
    s << indent << "pitch_rate: ";
    Printer<int16_t>::stream(s, indent + "  ", v.pitch_rate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_GIMBALSPEEDCONTROLREQUEST_H