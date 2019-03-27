#ifndef DUAL_QUATERNION_LIBRARY_H
#define DUAL_QUATERNION_LIBRARY_H


#include <eigen3/Eigen/Geometry>
#include "QuaternionOperations.h"
#include <iostream>

class DualQuaternion {
private:
    Eigen::Quaterniond p; // first
    Eigen::Quaterniond q ; //second

public:

    //default constructor
    DualQuaternion(){}

    //constructor to make dual quaternions from 8 floating point values
    DualQuaternion(std::vector<double> dual_quaternion_tuple){
        p.w() = dual_quaternion_tuple[0];
        p.x() = dual_quaternion_tuple[1];
        //TODO(ALG): Complete this.

    }

    //constructor to make dual quaternions using two Eigen::Quaternions
    DualQuaternion(Eigen::Quaterniond first, Eigen::Quaterniond second){
      p = first;
      q = second;
    }

    DualQuaternion multiply(DualQuaternion dq1, DualQuaternion dq2){
        DualQuaternion multiplication_result;

        multiplication_result.p = dq1.p*dq2.p;
        multiplication_result.q = addQuaternions(dq1.p * dq2.q, dq1.q * dq2.p);

        return multiplication_result;

    }



    DualQuaternion add(DualQuaternion dq1, DualQuaternion dq2){
        DualQuaternion addition_result;

        addition_result.p = addQuaternions(dq1.p, dq2.p);
        addition_result.q = addQuaternions(dq1.q, dq2.q);

        return addition_result;
    }


    DualQuaternion subtract(DualQuaternion dq1, DualQuaternion dq2){
        DualQuaternion subtraction_result;

        subtraction_result.p = subtractQuaternions(dq1.p, dq2.p);
        subtraction_result.q = subtractQuaternions(dq1.q, dq2.q);

        return subtraction_result;
    }


    DualQuaternion conjugate(DualQuaternion dq){ //TODO(ALG): Check this
        DualQuaternion conjugated_dual_quaternion;

        conjugated_dual_quaternion.p = dq.p.conjugate();
        conjugated_dual_quaternion.q = dq.q.conjugate();

        return conjugated_dual_quaternion;

    }

    DualQuaternion crossProduct(DualQuaternion dq1, DualQuaternion dq2){

        DualQuaternion temp_dual_quaternion_conjugate1, temp_dual_quaternion_conjugate2;
        DualQuaternion cross_product_result;

        cross_product_result.p = crossMultiplyQuaternions(dq1.p, dq2.p);
        cross_product_result.q = addQuaternions(crossMultiplyQuaternions(dq1.p, dq2.q),
                                                crossMultiplyQuaternions(dq1.q, dq2.p));

        return cross_product_result;

    }

    void swap(DualQuaternion& dq){
        Eigen::Quaterniond temp;
        temp = dq.q;
        dq.q = dq.p;
        dq.p = temp;

    }


    //accessor functions
    Eigen::Quaterniond getP(){
        return p;
    }

    Eigen::Quaterniond getQ(){
        return q;
    }

};

#endif