//
// Created by socrob on 21-03-2019.
//

#ifndef DUAL_QUATERNION_QUATERNIONOPERATIONS_H
#define DUAL_QUATERNION_QUATERNIONOPERATIONS_H
#include <eigen3/Eigen/Geometry>


Eigen::Quaterniond addQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2);

Eigen::Quaterniond subtractQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2);

Eigen::Quaterniond getConjugateQuaternion(Eigen::Quaterniond q);

Eigen::Quaterniond multiplyQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2);

Eigen::Quaterniond crossMultiplyQuaternions(Eigen::Quaterniond q1, Eigen::Quaterniond q2);

Eigen::Quaterniond halfQuaternion(Eigen::Quaterniond q1);


#endif //DUAL_QUATERNION_QUATERNIONOPERATIONS_H
