// Generated by gencpp from file griffin_powermate/PowermateEvent.msg
// DO NOT EDIT!


#ifndef GRIFFIN_POWERMATE_MESSAGE_POWERMATEEVENT_H
#define GRIFFIN_POWERMATE_MESSAGE_POWERMATEEVENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace griffin_powermate
{
template <class ContainerAllocator>
struct PowermateEvent_
{
  typedef PowermateEvent_<ContainerAllocator> Type;

  PowermateEvent_()
    : direction(0)
    , integral(0)
    , is_pressed(false)
    , push_state_changed(false)  {
    }
  PowermateEvent_(const ContainerAllocator& _alloc)
    : direction(0)
    , integral(0)
    , is_pressed(false)
    , push_state_changed(false)  {
  (void)_alloc;
    }



   typedef int8_t _direction_type;
  _direction_type direction;

   typedef int64_t _integral_type;
  _integral_type integral;

   typedef uint8_t _is_pressed_type;
  _is_pressed_type is_pressed;

   typedef uint8_t _push_state_changed_type;
  _push_state_changed_type push_state_changed;




  typedef boost::shared_ptr< ::griffin_powermate::PowermateEvent_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::griffin_powermate::PowermateEvent_<ContainerAllocator> const> ConstPtr;

}; // struct PowermateEvent_

typedef ::griffin_powermate::PowermateEvent_<std::allocator<void> > PowermateEvent;

typedef boost::shared_ptr< ::griffin_powermate::PowermateEvent > PowermateEventPtr;
typedef boost::shared_ptr< ::griffin_powermate::PowermateEvent const> PowermateEventConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::griffin_powermate::PowermateEvent_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace griffin_powermate

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'griffin_powermate': ['/home/tudeng/silvar-rtech/src/griffin_powermate/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::griffin_powermate::PowermateEvent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::griffin_powermate::PowermateEvent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::griffin_powermate::PowermateEvent_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7c609a1e7695a65cfaa2fdba1e74ac79";
  }

  static const char* value(const ::griffin_powermate::PowermateEvent_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7c609a1e7695a65cULL;
  static const uint64_t static_value2 = 0xfaa2fdba1e74ac79ULL;
};

template<class ContainerAllocator>
struct DataType< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "griffin_powermate/PowermateEvent";
  }

  static const char* value(const ::griffin_powermate::PowermateEvent_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Dirction values can be -1 for counter-clockwise, 0 for no, and 1 clockwise rotation\n\
int8 direction\n\
\n\
# Sum of direction values since the launch of the node\n\
int64 integral\n\
\n\
# TRUE while button is pressed, FALSE otherwise\n\
bool is_pressed\n\
\n\
# TRUE if the event was triggered by a push or a release of the button; FALSE otherwise\n\
bool push_state_changed\n\
";
  }

  static const char* value(const ::griffin_powermate::PowermateEvent_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.integral);
      stream.next(m.is_pressed);
      stream.next(m.push_state_changed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PowermateEvent_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::griffin_powermate::PowermateEvent_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::griffin_powermate::PowermateEvent_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<int8_t>::stream(s, indent + "  ", v.direction);
    s << indent << "integral: ";
    Printer<int64_t>::stream(s, indent + "  ", v.integral);
    s << indent << "is_pressed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_pressed);
    s << indent << "push_state_changed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.push_state_changed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRIFFIN_POWERMATE_MESSAGE_POWERMATEEVENT_H
