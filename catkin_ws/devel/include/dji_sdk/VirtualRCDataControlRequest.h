// Generated by gencpp from file dji_sdk/VirtualRCDataControlRequest.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_VIRTUALRCDATACONTROLREQUEST_H
#define DJI_SDK_MESSAGE_VIRTUALRCDATACONTROLREQUEST_H


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
struct VirtualRCDataControlRequest_
{
  typedef VirtualRCDataControlRequest_<ContainerAllocator> Type;

  VirtualRCDataControlRequest_()
    : channel_data()  {
      channel_data.assign(0);
  }
  VirtualRCDataControlRequest_(const ContainerAllocator& _alloc)
    : channel_data()  {
  (void)_alloc;
      channel_data.assign(0);
  }



   typedef boost::array<uint32_t, 16>  _channel_data_type;
  _channel_data_type channel_data;




  typedef boost::shared_ptr< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct VirtualRCDataControlRequest_

typedef ::dji_sdk::VirtualRCDataControlRequest_<std::allocator<void> > VirtualRCDataControlRequest;

typedef boost::shared_ptr< ::dji_sdk::VirtualRCDataControlRequest > VirtualRCDataControlRequestPtr;
typedef boost::shared_ptr< ::dji_sdk::VirtualRCDataControlRequest const> VirtualRCDataControlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'dji_sdk': ['/home/ubuntu/catkin_ws/src/dji_sdk/msg', '/home/ubuntu/catkin_ws/devel/share/dji_sdk/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a5dc9e9c055cbd8bb34a920ab9e508c6";
  }

  static const char* value(const ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa5dc9e9c055cbd8bULL;
  static const uint64_t static_value2 = 0xb34a920ab9e508c6ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/VirtualRCDataControlRequest";
  }

  static const char* value(const ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
uint32[16] channel_data\n\
";
  }

  static const char* value(const ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VirtualRCDataControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::VirtualRCDataControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "channel_data[]" << std::endl;
    for (size_t i = 0; i < v.channel_data.size(); ++i)
    {
      s << indent << "  channel_data[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.channel_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_VIRTUALRCDATACONTROLREQUEST_H
