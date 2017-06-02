// Generated by gencpp from file gpio/msg_gpio.msg
// DO NOT EDIT!


#ifndef GPIO_MESSAGE_MSG_GPIO_H
#define GPIO_MESSAGE_MSG_GPIO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gpio
{
template <class ContainerAllocator>
struct msg_gpio_
{
  typedef msg_gpio_<ContainerAllocator> Type;

  msg_gpio_()
    : gpio(0)  {
    }
  msg_gpio_(const ContainerAllocator& _alloc)
    : gpio(0)  {
  (void)_alloc;
    }



   typedef int32_t _gpio_type;
  _gpio_type gpio;




  typedef boost::shared_ptr< ::gpio::msg_gpio_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gpio::msg_gpio_<ContainerAllocator> const> ConstPtr;

}; // struct msg_gpio_

typedef ::gpio::msg_gpio_<std::allocator<void> > msg_gpio;

typedef boost::shared_ptr< ::gpio::msg_gpio > msg_gpioPtr;
typedef boost::shared_ptr< ::gpio::msg_gpio const> msg_gpioConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gpio::msg_gpio_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gpio::msg_gpio_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gpio

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'gpio': ['/home/ubuntu/catkin_ws/src/gpio/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gpio::msg_gpio_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gpio::msg_gpio_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gpio::msg_gpio_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gpio::msg_gpio_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gpio::msg_gpio_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gpio::msg_gpio_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gpio::msg_gpio_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb1624e7780ede690b5b26e43231316a";
  }

  static const char* value(const ::gpio::msg_gpio_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb1624e7780ede69ULL;
  static const uint64_t static_value2 = 0x0b5b26e43231316aULL;
};

template<class ContainerAllocator>
struct DataType< ::gpio::msg_gpio_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gpio/msg_gpio";
  }

  static const char* value(const ::gpio::msg_gpio_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gpio::msg_gpio_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 gpio\n\
";
  }

  static const char* value(const ::gpio::msg_gpio_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gpio::msg_gpio_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gpio);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_gpio_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gpio::msg_gpio_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gpio::msg_gpio_<ContainerAllocator>& v)
  {
    s << indent << "gpio: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gpio);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPIO_MESSAGE_MSG_GPIO_H
