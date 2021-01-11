// Generated by gencpp from file trabajo/usuario.msg
// DO NOT EDIT!


#ifndef TRABAJO_MESSAGE_USUARIO_H
#define TRABAJO_MESSAGE_USUARIO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trabajo/inf_personal_usuario.h>
#include <trabajo/pos_usuario.h>

namespace trabajo
{
template <class ContainerAllocator>
struct usuario_
{
  typedef usuario_<ContainerAllocator> Type;

  usuario_()
    : infPersonal()
    , emocion()
    , posicion()  {
    }
  usuario_(const ContainerAllocator& _alloc)
    : infPersonal(_alloc)
    , emocion(_alloc)
    , posicion(_alloc)  {
  (void)_alloc;
    }



   typedef  ::trabajo::inf_personal_usuario_<ContainerAllocator>  _infPersonal_type;
  _infPersonal_type infPersonal;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _emocion_type;
  _emocion_type emocion;

   typedef  ::trabajo::pos_usuario_<ContainerAllocator>  _posicion_type;
  _posicion_type posicion;





  typedef boost::shared_ptr< ::trabajo::usuario_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::trabajo::usuario_<ContainerAllocator> const> ConstPtr;

}; // struct usuario_

typedef ::trabajo::usuario_<std::allocator<void> > usuario;

typedef boost::shared_ptr< ::trabajo::usuario > usuarioPtr;
typedef boost::shared_ptr< ::trabajo::usuario const> usuarioConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::trabajo::usuario_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::trabajo::usuario_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace trabajo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trabajo': ['/home/kevin/catkin_ws/src/trabajo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::trabajo::usuario_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::trabajo::usuario_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::trabajo::usuario_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::trabajo::usuario_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::trabajo::usuario_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::trabajo::usuario_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::trabajo::usuario_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8dd70dbd6f089d82b1ef0dabb7d6bd3b";
  }

  static const char* value(const ::trabajo::usuario_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8dd70dbd6f089d82ULL;
  static const uint64_t static_value2 = 0xb1ef0dabb7d6bd3bULL;
};

template<class ContainerAllocator>
struct DataType< ::trabajo::usuario_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trabajo/usuario";
  }

  static const char* value(const ::trabajo::usuario_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::trabajo::usuario_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inf_personal_usuario infPersonal\n\
string emocion\n\
pos_usuario posicion\n\
================================================================================\n\
MSG: trabajo/inf_personal_usuario\n\
string nombre\n\
int16 edad\n\
string[] idiomas\n\
================================================================================\n\
MSG: trabajo/pos_usuario\n\
int16 x\n\
int16 y\n\
int16 z\n\
";
  }

  static const char* value(const ::trabajo::usuario_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::trabajo::usuario_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.infPersonal);
      stream.next(m.emocion);
      stream.next(m.posicion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct usuario_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::trabajo::usuario_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::trabajo::usuario_<ContainerAllocator>& v)
  {
    s << indent << "infPersonal: ";
    s << std::endl;
    Printer< ::trabajo::inf_personal_usuario_<ContainerAllocator> >::stream(s, indent + "  ", v.infPersonal);
    s << indent << "emocion: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.emocion);
    s << indent << "posicion: ";
    s << std::endl;
    Printer< ::trabajo::pos_usuario_<ContainerAllocator> >::stream(s, indent + "  ", v.posicion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRABAJO_MESSAGE_USUARIO_H