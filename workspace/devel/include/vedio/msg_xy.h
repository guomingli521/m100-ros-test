// Generated by gencpp from file vedio/msg_xy.msg
// DO NOT EDIT!


#ifndef VEDIO_MESSAGE_MSG_XY_H
#define VEDIO_MESSAGE_MSG_XY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vedio
{
template <class ContainerAllocator>
struct msg_xy_
{
  typedef msg_xy_<ContainerAllocator> Type;

  msg_xy_()
    : x(0)
    , y(0)  {
    }
  msg_xy_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;




  typedef boost::shared_ptr< ::vedio::msg_xy_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vedio::msg_xy_<ContainerAllocator> const> ConstPtr;

}; // struct msg_xy_

typedef ::vedio::msg_xy_<std::allocator<void> > msg_xy;

typedef boost::shared_ptr< ::vedio::msg_xy > msg_xyPtr;
typedef boost::shared_ptr< ::vedio::msg_xy const> msg_xyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vedio::msg_xy_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vedio::msg_xy_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vedio

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'vedio': ['/home/ubuntu/m100-ros-test/workspace/src/vedio/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vedio::msg_xy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vedio::msg_xy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vedio::msg_xy_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vedio::msg_xy_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vedio::msg_xy_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vedio::msg_xy_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vedio::msg_xy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd7b43fd41d4c47bf5c703cc7d016709";
  }

  static const char* value(const ::vedio::msg_xy_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd7b43fd41d4c47bULL;
  static const uint64_t static_value2 = 0xf5c703cc7d016709ULL;
};

template<class ContainerAllocator>
struct DataType< ::vedio::msg_xy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vedio/msg_xy";
  }

  static const char* value(const ::vedio::msg_xy_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vedio::msg_xy_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 x\n\
int32 y\n\
";
  }

  static const char* value(const ::vedio::msg_xy_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vedio::msg_xy_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_xy_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vedio::msg_xy_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vedio::msg_xy_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VEDIO_MESSAGE_MSG_XY_H
