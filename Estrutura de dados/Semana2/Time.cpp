/* implementação da classe Time */
#include <iostream> //Para usar a função std::cout.
#include "time.h" //Para visualizar a classe Time.

using namespace std; //Para escrever cout ao invés de std::cout

/*
Getters
*/

int Time::getHour() const{
    return hour;
}

int Time::getMinute() const{
    return minute;
}

int Time::getSecond() const{
    return second;
}

/*
 this->hour, this->minute e this->second se referem aos atributos.
 hour, minute e second se referem aos parâmetros dos métodos abaixo.
*/

/*
Setters
*/

void Time::setHour(int hour){
    this->hour = hour;
}

void Time::setMinute(int minute){
    this->minute = minute;
}

void Time::setSecond(int second){
    this->second = second;
}

void Time::print() const {
    cout<<hour<<":"<<minute<<":"<<second<<endl;
}

void Time::nextSecond(){
    second += 1;
    if(second >= 60){
    second = 0;
    minute += 1;
    }
    if (minute >= 60){
        minute = 0;
        hour += 1;
    }
    if (hour >= 24){
        hour = 0;
    }

}
