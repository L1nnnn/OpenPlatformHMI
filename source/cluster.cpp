
#include <cluster/cluster.h>

using namespace greeter;

Greeter::Greeter(std::string _name) : name(std::move(_name)) {}

std::string Greeter::greet(LanguageCode lang) const {

}
