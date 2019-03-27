//
// Created by socrob on 21-03-2019.
//

#include <eigen3/Eigen/Geometry>
#include "QuaternionOperations.h"

Eigen::Quaterniond addQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2){
    Eigen::Quaterniond addition_result;

    addition_result.w() = q1.w() + q2.w();
    addition_result.vec() = q1.vec() + q2.vec();

    return addition_result;
}

Eigen::Quaterniond subtractQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2){
    Eigen::Quaterniond subtraction_result;

    subtraction_result.w() = q1.w() - q2.w();
    subtraction_result.vec() = q1.vec() - q2.vec();

    return subtraction_result;


}


Eigen::Quaterniond getConjugateQuaternion(Eigen::Quaterniond x){
    return x.conjugate();

}

Eigen::Quaterniond multiplyQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2){
    return q1*q2;
}

Eigen::Quaterniond crossMultiplyQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2){
    Eigen::Quaterniond cross_multiplication_result;

    cross_multiplication_result.w() = 0;
    cross_multiplication_result.vec() = q1.w()*q2.vec() + q2.w()*q1.vec() + q1.vec().cross(q2.vec());

    return cross_multiplication_result;

}

Eigen::Quaterniond halfQuaternion(Eigen::Quaterniond q1){
    Eigen::Quaterniond halved(0.5*q1.w(), 0.5*q1.x(), 0.5*q1.y(), 0.5*q1.z());
    return halved;
}
