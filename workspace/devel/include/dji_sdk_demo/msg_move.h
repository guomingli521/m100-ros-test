// Generated by gencpp from file dji_sdk_demo/msg_move.msg
// DO NOT EDIT!


#ifndef DJI_SDK_DEMO_MESSAGE_MSG_MOVE_H
#define DJI_SDK_DEMO_MESSAGE_MSG_MOVE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_sdk_demo
{
template <class ContainerAllocator>
struct msg_move_
{
  typedef msg_move_<ContainerAllocator> Type;

  msg_move_()
    : status(0)  {
    }
  msg_move_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;




  typedef boost::shared_ptr< ::dji_sdk_demo::msg_move_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk_demo::msg_move_<ContainerAllocator> const> ConstPtr;

}; // struct msg_move_

typedef ::dji_sdk_demo::msg_move_<std::allocator<void> > msg_move;

typedef boost::shared_ptr< ::dji_sdk_demo::msg_move > msg_movePtr;
typedef boost::shared_ptr< ::dji_sdk_demo::msg_move const> msg_moveConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk_demo::msg_move_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk_demo::msg_move_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk_demo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dji_sdk_demo': ['/home/ubuntu/m100-ros-test/workspace/src/dji_sdk_demo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk_demo::msg_move_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk_demo::msg_move_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk_demo::msg_move_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8695a687dd99fd6c4e83bb483ce1c397";
  }

  static const char* value(const ::dji_sdk_demo::msg_move_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8695a687dd99fd6cULL;
  static const uint64_t static_value2 = 0x4e83bb483ce1c397ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk_demo/msg_move";
  }

  static const char* value(const ::dji_sdk_demo::msg_move_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
{
  static const char* value()
  {
    return "char status\n\
";
  }

  static const char* value(const ::dji_sdk_demo::msg_move_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_move_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk_demo::msg_move_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk_demo::msg_move_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_DEMO_MESSAGE_MSG_MOVE_H
